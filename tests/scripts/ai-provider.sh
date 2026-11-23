# The default AI provider for the varbase-e2e CI job, sourced after
# site:install with $DRUSH and $_BUILD_DIR set. The same file in every
# varbase_ai_* project: copy it unchanged.
#
# Drupal CMS AI sets up an amazee.ai trial. When amazee.ai cannot be reached
# or refuses the trial key, the AI module's Echo test provider takes every
# operation amazee.ai would have, scenarios tagged @live-ai are skipped and the
# rest still run. The amazee.ai key is cleared too: otherwise the AI admin pages
# wait on amazee.ai for its models until the browser gives up.
# Exports AI_PROVIDER (amazeeio or echoai) and defines ai_echo_only, which the job
# runs again after applying recipes, since Drupal CMS AI may set amazee.ai back.

# Proof only: AMAZEE_UNREACHABLE=1 makes api.amazee.ai unreachable.
if [ -n "$AMAZEE_UNREACHABLE" ]; then echo "127.0.0.1 api.amazee.ai" >> /etc/hosts; fi

ai_default() {
  $DRUSH php:eval "echo \Drupal::config('ai.settings')->get('default_providers.$1.provider_id');"
}

# Echo for every operation amazee.ai sets up (not moderation: Echo flags
# everything), and no amazee.ai key, so no page asks amazee.ai for models.
# The trial Key entity stays: with it, Drupal CMS AI does not sign up again.
ai_echo_only() {
  $DRUSH php:eval '$c = \Drupal::configFactory()->getEditable("ai.settings"); foreach (["chat", "chat_with_tools", "chat_with_structured_response", "chat_with_complex_json", "chat_with_image_vision", "translate_text", "embeddings", "text_to_image"] as $op) { $c->set("default_providers.$op", ["provider_id" => "echoai", "model_id" => "gpt-test"]); } $c->save(); $a = \Drupal::configFactory()->getEditable("ai_provider_amazeeio.settings"); if (!$a->isNew()) { $a->set("api_key", "")->save(); }'
  $DRUSH cache:rebuild
  if [ "$(ai_default chat)" != "echoai" ] || [ -n "$($DRUSH php:eval "echo \Drupal::config('ai_provider_amazeeio.settings')->get('api_key');")" ]; then
    echo "Could not set up the Echo test provider."
    return 1
  fi
}

# The trial signup can fail for a moment on amazee.ai's side: three tries.
for try in 1 2 3; do
  $DRUSH recipe "$_BUILD_DIR/recipes/${PROVIDER_RECIPE:-drupal_cms_ai}" -y
  $DRUSH cache:rebuild
  if [ -n "$(ai_default chat)" ] && [ -n "$(ai_default embeddings)" ]; then break; fi
  if [ "$try" -lt 3 ]; then sleep 30; fi
done

AI_PROVIDER=$(ai_default chat)
if [ -z "$AI_PROVIDER" ] || [ -z "$(ai_default embeddings)" ]; then
  echo "################################################################"
  echo "# amazee.ai unavailable: running with the Echo test provider"
  echo "# Scenarios tagged @live-ai are skipped."
  echo "################################################################"
  # Echo lives in the AI module's tests folder.
  chmod u+w "$_BUILD_DIR/web/sites/default" "$_BUILD_DIR/web/sites/default/settings.php"
  echo "\$settings['extension_discovery_scan_tests'] = TRUE;" >> "$_BUILD_DIR/web/sites/default/settings.php"
  $DRUSH cache:rebuild
  $DRUSH pm:enable ai_test -y
  ai_echo_only || return 1
  AI_PROVIDER=echoai
  export CUCUMBER_TAGS="(${CUCUMBER_TAGS:-not @wip}) and not @live-ai"
fi
export AI_PROVIDER
echo "Default AI provider: $AI_PROVIDER (chat), $(ai_default embeddings) (embeddings)"

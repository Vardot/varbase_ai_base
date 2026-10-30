[![Varbase](https://raw.githubusercontent.com/Vardot/varbase/11.0.x/images/varbase-logo.png)](https://www.drupal.org/project/varbase)

# Varbase AI Base
[![pipeline status](https://git.drupalcode.org/project/varbase_ai_base/badges/1.0.x/pipeline.svg)](https://git.drupalcode.org/project/varbase_ai_base/-/pipelines)
[![Varbase AI Base](https://img.shields.io/badge/Varbase%20AI%20Base-1.0.4-0d6efc?labelColor=001d38&style=flat-square)](https://git.drupalcode.org/project/varbase_ai_base/-/pipelines?ref=1.0.4)
[![Automated Functional Testing](https://git.drupalcode.org/project/varbase_project/badges/11.0.x/pipeline.svg)](https://git.drupalcode.org/project/varbase_project/-/pipelines)

A base recipe to install core AI modules and apply default Varbase AI configurations.

## Documentation

Read the [Varbase AI Base documentation](https://docs.varbase.vardot.com/developers/understanding-varbase/varbase-ai-recipes/varbase-ai-base) on the Varbase docs site.

The optional Varbase AI recipes and the order to apply them in are listed on the [Varbase AI Recipes](https://docs.varbase.vardot.com/developers/understanding-varbase/varbase-ai-recipes) page.

## Installation

Add the recipe using composer:
```
composer require drupal/varbase_ai_base:~1
```

Change directory to `/web` or `/docroot`

Run the Drupal recipe bash script:
```
bash core/scripts/drupal recipe recipes/contrib/varbase_ai_base
```

or

Run the Drush recipe command:
```
drush recipe recipes/contrib/varbase_ai_base
```

**Varbase AI Safety needs a default AI chat model.** Without one, applying this recipe
stops with "The operation type 'chat' does not have a default model". Set up an AI provider
and a default chat model first.

## Gemini AI provider

The [Gemini provider](https://www.drupal.org/project/gemini_provider) (chat, vision, and images with Nano Banana)
comes with this recipe as a Composer package. It is available but not enabled, and the site's default providers
are not changed. To use it, enable `gemini_provider`, add a Gemini API key in the Key module
(`/admin/config/system/keys`) and pick it at `/admin/config/ai/providers/gemini`. Images need a key on a paid tier.

## ElevenLabs AI provider

The [ElevenLabs provider](https://www.drupal.org/project/elevenlabs) (text to speech) comes with this recipe as
a Composer package. It is available but not enabled, and the site's default providers are not changed. To use
it, enable `elevenlabs`, add an ElevenLabs API key in the Key module (`/admin/config/system/keys`) and pick it at
`/admin/config/system/eleven-labs-settings`.

## Automated testing

GitLab CI on [git.drupalcode.org](https://git.drupalcode.org/project/varbase_ai_base) (`.gitlab-ci.yml`) builds
a Varbase 11 site, applies this recipe twice and runs the Varbase functional testing suite in `tests/` on it. See
[tests/README.md](tests/README.md) to run it against a site of your own.

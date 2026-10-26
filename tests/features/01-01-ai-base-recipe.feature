@varbase-ai-base @ai @recipes @local @development @staging @production
Feature: Varbase AI Recipe - AI Base - The core AI stack and the AI recipes it bundles
  As a site administrator
  I want one recipe to install the AI modules and the Varbase AI recipes it bundles
  So that editors get alt text, the editor assistant, tagging, context, review and safety in one step

  Background:
    Given I am a logged in user with the "Webmaster" user

  Scenario: Check the AI, ECA and AI Integration ECA modules are enabled
     When I go to "/admin/modules"
     Then the Drupal checkbox "edit-modules-ai-enable" is checked
      And the Drupal checkbox "edit-modules-eca-enable" is checked
      And the Drupal checkbox "edit-modules-ai-integration-eca-enable" is checked

  Scenario: Check the Drupal CMS Assistant can hand work to the Canvas and site building agents
     When I go to "/admin/config/ai/tools-automation/agents/drupal_cms_assistant/edit/form"
     Then I should see "Drupal CMS Assistant"
      And I see visible canvas orchestrator agent, canvas component agent, canvas metadata agent
      And I see visible canvas page builder agent, canvas template builder agent, canvas title agent
      And I see visible content type agent, field agent, taxonomy agent

  Scenario: Check the AI Context items from Varbase AI Context are there
     When I go to "/admin/config/ai/context/items"
     Then I should see "Varbase AI Editorial Rules"
      And I should see "Varbase AI Safety Guardrails"
      And I should see "Varbase Brand & Identity Guidelines"

  Scenario: Check the guardrails from Varbase AI Safety are there
     When I go to "/admin/config/ai/guardrails"
     Then I should see "PII: Email Address"
      And I should see "Security: Dangerous HTML Tags"
      And I should see "Liability: Medical Advice"

  Scenario: Check the alt text settings from Varbase AI Image Alt are there
     When I go to "/admin/config/ai/ai_image_alt_text"
     Then I should see "AI Image Alt Text Settings"

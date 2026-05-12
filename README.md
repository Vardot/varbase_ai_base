# Varbase AI Base

A base recipe to install core AI modules and apply default Varbase AI configurations.

This recipe provides a complete AI setup including:
- Core AI modules (ai, eca, ai_integration_eca)
- OpenAI integration with default providers and API key configuration
- Automatic image alt text generation
- CKEditor AI Assistant for content editing

## Included Sub-Recipes

This recipe automatically applies the following sub-recipes:
- **varbase_ai_default**: OpenAI configuration and default provider settings
- **varbase_ai_image_alt**: AI-powered image alt text generation
- **varbase_ai_editor_assistant**: CKEditor 5 AI assistant integration

## Optional Recipes Available

The following optional recipes are available and can be applied separately for extended functionality:

- **varbase_ai_taxonomy_tagging**: Automatically tag referenced taxonomy terms based on content entity's body field
  ```bash
  drush recipe recipes/contrib/varbase_ai_taxonomy_tagging
  ```

- **varbase_ai_agents**: AI-powered chatbot for streamlined administration with multiple agent management capabilities
  ```bash
  drush recipe recipes/contrib/varbase_ai_agents
  ```

- **varbase_ai_context**: Adds AI context configuration to enrich prompts with site-specific context
  ```bash
  drush recipe recipes/contrib/varbase_ai_context
  ```

- **varbase_ai_safety**: Applies AI safety guardrails and content moderation defaults
  ```bash
  drush recipe recipes/contrib/varbase_ai_safety
  ```

Add the recipe using composer:
```
composer require drupal/varbase_ai_base:~1.0.0
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

[![Varbase](https://raw.githubusercontent.com/Vardot/varbase/11.0.x/images/varbase-logo.png)](https://www.drupal.org/project/varbase)

# Varbase AI Base
[![pipeline status](https://git.drupalcode.org/project/varbase_ai_base/badges/1.0.x/pipeline.svg)](https://git.drupalcode.org/project/varbase_ai_base/-/pipelines)
[![Varbase AI Base](https://img.shields.io/badge/Varbase%20AI%20Base-1.0.1-0d6efc?labelColor=001d38&style=flat-square)](https://git.drupalcode.org/project/varbase_ai_base/-/pipelines?ref=1.0.1)
[![Automated Functional Testing](https://git.drupalcode.org/project/varbase_project/badges/11.0.x/pipeline.svg)](https://git.drupalcode.org/project/varbase_project/-/pipelines)

A base recipe to install core AI modules and apply default Varbase AI configurations.

This recipe provides a complete AI setup including:
- Core AI modules (ai, eca, ai_integration_eca)
- OpenAI integration with default providers and API key configuration
- Automatic image alt text generation
- CKEditor AI Assistant for content editing

## Included Sub-Recipes

This recipe automatically applies the following sub-recipes, in this order:
- **drupal_cms_ai**: AI providers (amazee.ai, OpenAI, Anthropic), API key setup, AI agents and the AI chatbot
- **varbase_ai_image_alt**: AI-powered image alt text generation
- **varbase_ai_editor_assistant**: CKEditor 5 AI assistant integration
- **varbase_ai_taxonomy_tagging**: Automatically tag referenced taxonomy terms based on content entity's body field
- **varbase_ai_context**: Context Control Center with starter context items for brand, editorial rules and safety guardrails
- **varbase_ai_content_review_base**: Scored AI review of any content item for editors
- **varbase_ai_safety**: Prompt safety and PII guardrails, AI Logging (90 day retention) and AI Observability

**Varbase AI Safety needs a default AI chat model.** Without one, applying this recipe
stops with "The operation type 'chat' does not have a default model". The AI Assistant
recipe sets one when it can reach amazee.ai or is given an OpenAI or Anthropic key;
otherwise set up an AI provider and a default chat model first.

## Optional Recipes Available

The following optional recipes are available and can be applied separately for extended functionality:

- **varbase_ai_agents**: AI-powered chatbot for streamlined administration with multiple agent management capabilities
  ```bash
  drush recipe recipes/contrib/varbase_ai_agents
  ```

- **varbase_ai_figma_base**: One-command Figma-to-Canvas setup - installs AI Figma, Varbase AI Figma, Context Control Center and AI Agent Modes, and wires the Figma tools into the Drupal Canvas AI Orchestrator
  ```bash
  drush recipe recipes/contrib/varbase_ai_figma_base
  ```

- **varbase_ai_search_base**: A vector index of the site's pages for AI search
  ```bash
  drush recipe recipes/contrib/varbase_ai_search_base
  ```

- **varbase_ai_vdb_mariadb**: MariaDB's native VECTOR type as the vector database for AI Search
  ```bash
  drush recipe recipes/contrib/varbase_ai_vdb_mariadb
  ```

- **varbase_ai_vdb_milvus**: Milvus or Zilliz Cloud as the vector database for AI Search
  ```bash
  drush recipe recipes/contrib/varbase_ai_vdb_milvus
  ```

- **varbase_ai_chatbot_base**: A visitor chatbot that answers only from the site, with links
  ```bash
  drush recipe recipes/contrib/varbase_ai_chatbot_base
  ```

- **varbase_ai_answers_base**: A question box that answers from site content, with citations
  ```bash
  drush recipe recipes/contrib/varbase_ai_answers_base
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

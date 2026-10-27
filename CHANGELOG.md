# Changelog

All notable changes to the Varbase AI Base recipe are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [1.0.3] - 2026-10-27
### Added
- Require Varbase AI Default `~2`, which applies Varbase AI Base and every Varbase AI recipe in one step ([#3633094](https://www.drupal.org/i/3633094)).
- Require the ElevenLabs AI provider (`drupal/elevenlabs: ^1.2`), available but not enabled
  ([#3633478](https://www.drupal.org/i/3633478)).
- Require the Gemini AI provider (`drupal/gemini_provider: ^1.1`), available but not enabled
  ([#3633458](https://www.drupal.org/i/3633458)).
- Automated functional acceptance tests for Varbase AI Base, run in CI on a fresh Varbase 11 site ([#3633122](https://www.drupal.org/i/3633122)).
- Check Suggest tags on the page form, where Varbase AI Taxonomy Tagging puts it ([#3633594](https://www.drupal.org/i/3633594)).

### Changed
- Pin the Varbase AI recipes to their released lines: `~2.0.0` for Image Alt, Editor Assistant and Taxonomy Tagging, `~1.0.0` for Context, Safety and Figma Base, `~1` for the other Varbase AI recipes, and `~2` for Varbase AI Default.
- Install the Varbase Starter dev line in CI, which carries the search view fix for Drupal CMS Search 2.2.7.
- Update the version badge to `1.0.3` in `README.md`.

## [1.0.2] - 2026-10-25
### Added
- Add Varbase AI Search Base to the optional Varbase AI recipes ([#3632478](https://www.drupal.org/i/3632478)).
- Add Varbase AI VDB: MariaDB to the optional Varbase AI recipes ([#3632479](https://www.drupal.org/i/3632479)).
- Add Varbase AI VDB: Milvus to the optional Varbase AI recipes ([#3632480](https://www.drupal.org/i/3632480)).
- Add Varbase AI Chatbot Base to the optional Varbase AI recipes ([#3632481](https://www.drupal.org/i/3632481)).
- Add Varbase AI Answers Base (Ask AI) to the optional Varbase AI recipes ([#3632482](https://www.drupal.org/i/3632482)).
- Apply Varbase AI Content Review Base with the Varbase AI Base recipe ([#3632483](https://www.drupal.org/i/3632483)).
- Add Varbase AI Content Operations Base to the optional Varbase AI recipes ([#3632484](https://www.drupal.org/i/3632484)).
- Add Varbase AI MCP Server Base to the optional Varbase AI recipes ([#3632485](https://www.drupal.org/i/3632485)).
- Add Varbase AI Readable Base to the optional Varbase AI recipes ([#3632486](https://www.drupal.org/i/3632486)).
- Add Varbase AI SEO to the optional Varbase AI recipes ([#3632487](https://www.drupal.org/i/3632487)).
- Add Varbase AI Media Base to the optional Varbase AI recipes ([#3632488](https://www.drupal.org/i/3632488)).
### Changed
- Move the documentation to docs.varbase.vardot.com ([#3633016](https://www.drupal.org/i/3633016)).
- Pin the eleven new Varbase AI recipe dependencies to `~1`, and the `drupal/varbase_ai_context`, `drupal/varbase_ai_editor_assistant`, `drupal/varbase_ai_figma_base`, `drupal/varbase_ai_image_alt`, `drupal/varbase_ai_safety`, `drupal/varbase_ai_taxonomy_tagging` dependencies back to their 1.0.1 pins for the release.
- Update the version badge to `1.0.2` in `README.md`.

## [1.0.1] - 2026-10-05
### Changed
- Apply the Varbase AI Context and Varbase AI Safety recipes with the Varbase AI Base recipe, Safety last.
- Update the Included Sub-Recipes list in `README.md` to match `recipes:` and note that Varbase AI Safety needs a default AI chat model.
- Pin the `drupal/varbase_ai_context` to `~1.0.0`, `drupal/varbase_ai_editor_assistant` to `~2.0.0`, `drupal/varbase_ai_figma_base` to `~1.0.0`, `drupal/varbase_ai_image_alt` to `~2.0.0`, `drupal/varbase_ai_safety` to `~1.0.0`, `drupal/varbase_ai_taxonomy_tagging` to `~2.0.0` dependencies for the release.
- Update the version badge to `1.0.1` in `README.md`.

## [1.0.0] - 2026-09-06
### Changed
- Release the first stable version of the Varbase AI Base recipe with the Varbase 11.0.0 suite.
- Pin the `drupal/varbase_ai_context` to `~1.0.0`, `drupal/varbase_ai_editor_assistant` to `~2.0.0`, `drupal/varbase_ai_figma_base` to `~1.0.0`, `drupal/varbase_ai_image_alt` to `~2.0.0`, `drupal/varbase_ai_safety` to `~1.0.0`, `drupal/varbase_ai_taxonomy_tagging` to `~2.0.0` dependencies for the release.
- Update the version badge to `1.0.0` in `README.md`.

## [1.0.0-rc1] - 2026-08-15
### Changed
- Release the recipe with the Varbase 11.0.0-rc1 suite. No functional changes since 1.0.0-beta4.
- Pin the `drupal/varbase_ai_context` to `~1.0.0`, `drupal/varbase_ai_editor_assistant` to `~2.0.0`, `drupal/varbase_ai_figma_base` to `~1.0.0`, `drupal/varbase_ai_image_alt` to `~2.0.0`, `drupal/varbase_ai_safety` to `~1.0.0`, `drupal/varbase_ai_taxonomy_tagging` to `~2.0.0` dependencies for the release.
- Update the version badge to `1.0.0-rc1` in `README.md`.

## [1.0.0-beta4] - 2026-07-23
### Added
- Add `varbase_ai_figma_base` as an optional recipe to the Varbase AI Base recipe.

## [1.0.0-beta3] - 2026-07-10
### Changed
- Update Drupal Core from ~11.3.0 to ~11.4.0 in the Varbase AI Base recipe.
- Pin the `drupal/varbase_ai_image_alt`, `drupal/varbase_ai_editor_assistant`, and `drupal/varbase_ai_taxonomy_tagging` dependencies to `~2.0.0`, and `drupal/varbase_ai_context` and `drupal/varbase_ai_safety` to `~1.0.0`.
- Update the version badge to `1.0.0-beta3` in `README.md`.
- Run CI on tag pushes and add the README pipeline and release badges.

## [1.0.0-beta2] - 2026-06-21
### Changed
- Maintenance and dependency updates for the Varbase AI Base recipe.

## [1.0.0-beta1]
### Changed
- Earlier beta of the Varbase AI Base recipe.

## [1.0.0-alpha1]
### Added
- Initial release of the Varbase AI Base recipe.

[Unreleased]: https://git.drupalcode.org/project/varbase_ai_base/-/compare/1.0.3...1.0.x
[1.0.3]: https://git.drupalcode.org/project/varbase_ai_base/-/compare/1.0.2...1.0.3
[1.0.2]: https://git.drupalcode.org/project/varbase_ai_base/-/compare/1.0.1...1.0.2
[1.0.1]: https://git.drupalcode.org/project/varbase_ai_base/-/compare/1.0.0...1.0.1
[1.0.0]: https://git.drupalcode.org/project/varbase_ai_base/-/compare/1.0.0-rc1...1.0.0
[1.0.0-rc1]: https://git.drupalcode.org/project/varbase_ai_base/-/compare/1.0.0-beta4...1.0.0-rc1
[1.0.0-beta4]: https://git.drupalcode.org/project/varbase_ai_base/-/compare/1.0.0-beta3...1.0.0-beta4
[1.0.0-beta3]: https://git.drupalcode.org/project/varbase_ai_base/-/compare/1.0.0-beta2...1.0.0-beta3
[1.0.0-beta2]: https://git.drupalcode.org/project/varbase_ai_base/-/compare/1.0.0-beta1...1.0.0-beta2
[1.0.0-beta1]: https://git.drupalcode.org/project/varbase_ai_base/-/compare/1.0.0-alpha1...1.0.0-beta1
[1.0.0-alpha1]: https://git.drupalcode.org/project/varbase_ai_base/-/tags/1.0.0-alpha1

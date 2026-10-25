# Changelog

All notable changes to the Varbase AI Base recipe are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]
### Added
- Listed Varbase AI Search Base among the optional recipes (#3632478).
- Listed Varbase AI VDB: MariaDB among the optional recipes (#3632479).
- Listed Varbase AI VDB: Milvus among the optional recipes (#3632480).
- Listed Varbase AI Chatbot Base among the optional recipes (#3632481).
- Listed Varbase AI Answers Base (Ask AI) among the optional recipes (#3632482).
- Apply Varbase AI Content Review Base with the Varbase AI Base recipe, before Varbase AI Safety (#3632483).
- Listed Varbase AI Content Operations Base among the optional recipes (#3632484).
- Listed Varbase AI MCP Server Base among the optional recipes (#3632485).
- Listed Varbase AI Readable Base among the optional recipes (#3632486).
- Listed Varbase AI SEO among the optional recipes (#3632487).
- Listed Varbase AI Media Base among the optional recipes (#3632488).
### Changed
- Move the documentation to docs.varbase.vardot.com ([#3633016](https://www.drupal.org/i/3633016)).

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

[Unreleased]: https://git.drupalcode.org/project/varbase_ai_base/-/compare/1.0.1...1.0.x
[1.0.1]: https://git.drupalcode.org/project/varbase_ai_base/-/compare/1.0.0...1.0.1
[1.0.0]: https://git.drupalcode.org/project/varbase_ai_base/-/compare/1.0.0-rc1...1.0.0
[1.0.0-rc1]: https://git.drupalcode.org/project/varbase_ai_base/-/compare/1.0.0-beta4...1.0.0-rc1
[1.0.0-beta4]: https://git.drupalcode.org/project/varbase_ai_base/-/compare/1.0.0-beta3...1.0.0-beta4
[1.0.0-beta3]: https://git.drupalcode.org/project/varbase_ai_base/-/compare/1.0.0-beta2...1.0.0-beta3
[1.0.0-beta2]: https://git.drupalcode.org/project/varbase_ai_base/-/compare/1.0.0-beta1...1.0.0-beta2
[1.0.0-beta1]: https://git.drupalcode.org/project/varbase_ai_base/-/compare/1.0.0-alpha1...1.0.0-beta1
[1.0.0-alpha1]: https://git.drupalcode.org/project/varbase_ai_base/-/tags/1.0.0-alpha1

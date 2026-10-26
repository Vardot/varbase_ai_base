# Varbase functional testing suite

Playwright and Cucumber through [`@vardot/varbase-e2e`](https://www.npmjs.com/package/@vardot/varbase-e2e), on a
Varbase 11 site with this recipe applied.

| Feature | Covers |
| --- | --- |
| `01-01-ai-base-editorial.feature` | A content editor drafts a blog post with the AI Assistant and saves it with Suggest tags at hand; adds an image that passes the safety check; opens the AI review of a post |
| `01-02-ai-base-access.feature` | Only the webmaster opens the AI settings: the editorial roles and visitors get Access denied |
| `01-03-ai-base-accessibility.feature` | The blog form with its AI tools gives every field a label and every link a name |

The AI controls are named selectors in `tests/selectors/ai-base-selectors.json`. One custom step, in `tests/step-definitions/files.steps.js`, attaches an upload to a file field by its label.

## Run it

```bash
npm install
LAUNCH_URL=https://your-site.ddev.site npm test
```

The site needs the webmaster (`webmaster`) and one user per role, named after the role (`content_editor`,
`content_admin`, `seo_admin`, `site_admin`), all with the password in `LOGIN_PASS` (default `dD.123123ddd`).
`.gitlab-ci.yml` shows the whole setup.

## AI provider

The recipe applies Drupal CMS AI first, which sets up an amazee.ai trial as the default provider, so no key is
needed and every scenario runs on real models. Drupal CMS AI asks before an image goes to the AI service; the
image scenario answers "Yes (this time)", as an editor would.

The blog form is held to the field label, link name and ARIA role checks rather than the full serious gate: the admin theme's help
toggles and CKEditor's toolbar menu items fail it, which comes from the theme and the editor, not this recipe.

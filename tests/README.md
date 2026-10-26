# Varbase functional testing suite

Playwright and Cucumber through [`@vardot/varbase-e2e`](https://www.npmjs.com/package/@vardot/varbase-e2e), on a
Varbase 11 site with this recipe applied.

| Feature | Covers |
| --- | --- |
| `01-01-ai-base-recipe.feature` | The AI, ECA and AI Integration ECA modules, the Canvas tools of the Drupal CMS Assistant, and one sign of each bundled recipe |
| `01-02-ai-base-access.feature` | Only the webmaster opens the AI settings: the editorial roles and visitors get Access denied |

The agents the Drupal CMS Assistant can call are named selectors in `tests/selectors/ai-base-selectors.json`.

## Run it

```bash
npm install
LAUNCH_URL=https://your-site.ddev.site npm test
```

The site needs the webmaster (`webmaster`) and one user per role, named after the role (`content_editor`,
`content_admin`, `seo_admin`, `site_admin`), all with the password in `LOGIN_PASS` (default `dD.123123ddd`).
`.gitlab-ci.yml` shows the whole setup.

## AI provider

CI makes the AI module's test provider (EchoAI) the default with `tests/recipes/varbase_ai_testing_provider`
before the apply, so no key is needed and the amazee.ai trial that Drupal CMS AI sets up does not become the
default. The AI behaviour of each bundled recipe is tested in that recipe's own suite.

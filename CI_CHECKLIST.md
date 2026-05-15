CI checklist for repository validation

- Install dependencies:

  ```bash
  npm ci
  ```

- HTML validation step:

  ```bash
  npx html-validate "*.html"
  ```

- CSS linting step:

  ```bash
  npx stylelint --config .stylelintrc.json "css/*.css"
  ```

- Optional auto-fix step (run before commit or as a separate job):

  ```bash
  npx stylelint --config .stylelintrc.json "css/*.css" --fix
  ```

- Notes:
  - Ensure `package.json` includes `devDependencies` so CI installs `stylelint` and `html-validate`.
  - Consider running `npx stylelint --fix` in a pre-commit hook to reduce pipeline failures.

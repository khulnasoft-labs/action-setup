# GitHub Pull Request

**We are in process of archiving this repository.** This Action was created before GitHub CLI was an option. We believe there are now better options for creating pull requests using GitHub Actions.

We recommend using GitHub CLI directly in your workflow file. See: [`gh pr create`](https://cli.github.com/manual/gh_pr_create)

For example:

```yaml
# File: .github/workflows/pull-request.yml

on:
  push:
    branches:
      - feature-1

permissions:
  pull-requests: write

jobs:
  pull-request:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - name: pull-request
        run: |
          gh_pr_up() { gh pr create $* || gh pr edit $* }
          gh_pr_up --title "My pull request" --body "Description"
```
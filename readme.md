# Advance GitHub Actions (WORKFLOWS & TRIGGERS)

Master advanced triggers and workflows to build real-world CI/CD Pipelines

- Manual Trigger (workflow_dispatch)
- Release Tags Trigger
- Branch & path Fliters
- Conditional Jobs
- Workflow dependencies
- Artificats & Cache
- Schedule workflows
- Production Ready Trigger Strategy

## Relase Trigger (Github release)

Trigger workflows when a version tag is pushed or a GitHub Release is published.

### Use Cases

- Production Release
  - Deploy Stable, tested code to prodution

- Versioned Deployments
  - Each release is tied to a specific version

- Enterprise Release Strategy
  - Follow a structured, approved releae process for reliability and compliance

## Git Commands

- git tag -a v1.0.0 -m "Release v1.0.0"
- git push origin v1.0.0
- git release create v1.0.0 --title "v1.0.0" --notes "Release nots here"

## Lab Steps

1. Create a new GitHub repository
2. Upload this project
3. Push to the main branch
4. tag to the branch
5. Push to the main branch
6. release to the branch
7. Open the Actions tab in GitHub
8. Verify the workflow runs successfully

## Workflow Explanation

- name
  - Defines the workflow name.

- on
  - Defines the trigger event.

- jobs
  - Contains the jobs to execute.

- runs-on
  - Defines the GitHub-hosted runner.

- steps
  - Defines the list of tasks.

- run
  - Executes a shell command.

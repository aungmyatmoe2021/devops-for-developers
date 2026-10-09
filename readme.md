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

## Artifacts (Artifacts)

- Purpose
  - Store workflow outputs

- Used For
  - Build files, reports, binaries

- Lifetime
  - Download later manually

- Shared Between Jobs (In Same Workflow)
  - Yes
- Shared Between Workflow Runs
  - Manual download

- Example
  - dist/, test-report.xml, build.tar.gz

- upload / Save Action
  - actions/upload-artifact

- Main Goal
  - Preserve outputs

### How They Work In a WORKFLOW

Checkout Code --> Install Dependencies --> Build & Test --> Upload Artifacts --> Workflow Complete

## Explanation

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

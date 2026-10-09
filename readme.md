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

## Manual Trigger (workflow_dispatch)

Use workfow_dispatch to manually build and push a Docker Image for a selected service from your project

### What is it? How the process?

- Manually triggered from GitHub UI
- Select servie: backend, frontend, or payment
- Build Docker image for the selectd service
- Push image to Docker Hub
- Image tag = short commit SHA

## Folder Structure

.github/ └── workflows/ └── workflow_dispatch.yml

apps/ └── backend/ └── Dockerfile

apps/ └── backend/ └── app.py

apps/ └── frontend/ └── Dockerfile

apps/ └── frontend/ └── index.html

apps/ └── integration/ └── Dockerfile

apps/ └── integration/ └── app.py

app.py
package.json
requirements.txt

## Lab Steps

1. Create a new GitHub repository
2. Upload this project
3. Push to the main branch
4. Open the Actions tab in GitHub
5. Verify the workflow runs successfully

## Expected Result

The workflow should print:

Hello GitHub Actions

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

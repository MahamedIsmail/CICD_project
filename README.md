# CICD projects 

Automating build and code checks with GitHub Actions: a Docker image pipeline (CD) and a Terraform linting pipeline (CI).

| Task | What it does | Part of CI/CD |
|---|---|---|
| [Task 1: Docker build & push](Task_1/README.md) | Builds a Flask app into a Docker image and pushes it to Docker Hub on every push | **CD** (Continuous Delivery) |
| [Task 2: Terraform linting](Task_2/Terraform_task/README.md) | Lints Terraform code with TFLint on every push and fails on errors | **CI** (Continuous Integration) |

## Task 1: Build and push a Docker image

- Flask app packaged with a Dockerfile
- Pipeline logs in to Docker Hub, builds with Buildx and pushes the image tagged with the commit SHA
- Credentials: Docker Hub token stored as a GitHub **secret**, username as a **variable**
- Result: [`mahamedismail01/simple-webapp`](https://hub.docker.com/r/mahamedismail01/simple-webapp) on Docker Hub

## Task 2: Lint Terraform code

- TFLint with the AWS ruleset plus a custom S3 naming rule (lowercase + required prefix)
- Errors were added on purpose to prove the pipeline catches what `terraform validate` and `plan` miss
- Read-only check: nothing is deployed, so no AWS credentials are needed

## Repo structure
```
CICD_project/
├── .github/workflows/
│ ├── Docker_workflow.yml ← Task 1 pipeline
│ └── Terraform_workflow.yml ← Task 2 pipeline
├── Task_1/ ← Flask app + Dockerfile
└── Task_2/Terraform_task/ ← Terraform code + .tflint.hcl
```


## Tools

GitHub Actions · Docker · Buildx · Docker Hub · Terraform · TFLint · Python/Flask

Each task folder has its own README with setup, results, screenshots, and the errors I hit along the way.

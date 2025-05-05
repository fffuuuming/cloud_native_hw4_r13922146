# Cloud Native Application HW4 : Docker

## Build the Image
```docker build -t myapp .```

## Run the Container
```docker run --rm myapp```

## CI/CD Workflow
I have two workflows
- **docker-ci**: when pushing to `main` or PR, GitHub Actions will build the Docker image
- **docker-push**: When pushing to `main`, GitHub Actions will:
  1. Build the Docker image
  2. Push it to Docker Hub `fffuuumingyee/2025cloud`

## Tagging Strategy
Current method, when pushing to docker hub, the image is tagged using a combination of:
- **SHORT_SHA**: the first 7 characters of the Git commit hash
- **TIMESTAMP**: the current UTC time in format YYYYMMDD-HHMM

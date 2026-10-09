# This is about "MULTI-STAGE & BUILDS" image creating....

## Feature

    - Frontend
        React Application

    - Dockerfile
        - Builder Layer
        - Runner Layer

## Concept

    - This is multi-stage(builder and runner) which means that we don't need to copy the whole project after build the build
    - Build Project ---> output
    - Security : create usergroup and user

## Resource Limits (CPU/RAM)

    - docker run -d --name myapp --memory="512m" --memory-swap="1g" --cpus="1.0" --pids-limit=100 -p 8080:3000 aungmyatmoe/random_quote_generator:1.0.0

## Vulnerability Scanning

### Basic Image Scan

    - trivy image aungmyatmoe/random_quote_generator:1.0.0

### Scan and show only HIGH and CRITICAL

    - trivy image --security HIGH,CRITICAL aungmyatmoe/random_quote_generator:1.0.0

### Scan with ignore unfixed vlunerabilities

    - trivy image --ignore-unfixed aungmyatmoe/random_quote_generator:1.0.0

### Output in table format

    - trivy image -f table aungmyatmoe/random_quote_generator:1.0.0

## useful tools.

    - Local
        - docker build -t random_quote_generator:1.0.0 .
        - docker run --name quote -d -p 8080:3000 random_quote_generator:1.0.0

    - Docker Hub
        - docker tag random_quote_generator:1.0.0 aungmyatmoe/random_quote_generator:1.0.0
        - docker push aungmyatmoe/random_quote_generator:1.0.0

    - Troubleshooting
        - docker exec -it quote sh

### Finally .........

    - Test in browser (http://localhost:8080/quote)

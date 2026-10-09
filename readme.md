# Installion, build image and run image

## useful tools.

    - Local
        - docker build -t docker_multi_stage:1.0.0 .
        - docker run --name multi_stage -d -p 8080:3000 docker_multi_stage:1.0.0

    - Docker Hub
        - docker tag docker_multi_stage:1.0.0 aungmyatmoe/docker_multi_stage:1.0.0
        - docker push aungmyatmoe/docker_multi_stage:1.0.0

    - Troubleshooting
        - docker exec -it multi_stage sh

## run image with restriced cpu and memory

docker run -d --name myapp --restart unless-stopped --memory="512m" --memory-swap="1g" --cpus="1.0" --pids-limit=100 -p 3000:3000 docker_multi_stage:1.0.0

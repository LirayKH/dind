## Build & Commit
docker build -t kutsegor/dind:latest -t kutsegor/dind:latest --no-cache .
docker push kutsegor/dind:latest

## Launch
1. Run DinD Image:
    ```bash
    docker run --privileged -it \
    -p <hostPort-1>:<containerPort-1> \
    ...
    -p <hostPort-n>:<containerPort-n> \
    kutsegor/dind
    ```
    ℹ️ **Note:** Make sure to bind all ports your child containers might need.

2. Run container inside of the DinD image:
    ```bash
    docker run <docker-image>
    ```

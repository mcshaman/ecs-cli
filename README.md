# ECS CLI
This is a Docker image for the AWS Elastic Container Service (ECS) CLI.

## Docker CLI usage
The AWS ECS can be executed from the Docker CLI with the docker run command:

```
$ docker run --rm -it mcshaman/ecs-cli --version
```

This command will print out the version of the ECS CLI being used in the container. Note that the ecs executable was not specified in the docker run command because the entrypoint for the image is defined as the ecs executable.

For any ECS CLI command, you can run its help command to get help information about the command:

```
$ docker run --rm -it mcshaman/ecs-cli help
```

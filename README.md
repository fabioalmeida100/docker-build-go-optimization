# Docker multistage build example for optimization size of image

Example of how to use multistage build for optimization size of image. This example is based in a simple Go application.

## Build the image

```bash
  docker build -t multistage-example .
```

## Run the container

```bash
  docker run multistage-example
```

## How this image size is smaller?

It's simple:

- In first stage the build of Go application is done and the binary is generated.
- In second stage the binary is copied from first stage and the image is created with only the binary and the necessary libraries to run the application.
- But, the main trick in second stage is that the image is based in `scratch` image Docker

The final size of image is about 2MB.

## Docker hub

The image is available in Docker Hub: [multistage-example](https://hub.docker.com/r/fabioalmeida100/multistage-example/tags)

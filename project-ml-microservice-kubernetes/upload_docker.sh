#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=thangnh2405/project-ml-microservice-kubernetes
tag=latest

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath tag: $tag"
docker login
docker tag project-ml-microservice-kubernetes $dockerpath:$tag

# Step 3:
# Push image to a docker repository
docker push $dockerpath:$tag
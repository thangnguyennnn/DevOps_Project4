#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
docker_path=thangnh2405

# Step 2
# Create a deployment
kubectl run project-ml-microservice-kubernetes --image="$docker_path/project-ml-microservice-kubernetes:latest" --port=80 --labels app=project-ml-microservice-kubernetes

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward project-ml-microservice-kubernetes 8080:80
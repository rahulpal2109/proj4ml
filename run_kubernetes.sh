#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=rahulpal210991/rpmlapi

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run rpmlapi --image=rahulpal210991/rpmlapi --port=80


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward rpmlapi 8000:80
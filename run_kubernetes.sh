#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=zwayyed00/myapp

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment my-app --image=$dockerpath:first-image --port=80

# Step 3:
# List kubernetes pods
kubectl get po
# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/my-app 8000:80

#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
export dockerpath="shahzeb01/ml-ms-api:development"

# Step 2:  
# Authenticate & tag
docker login --u shahzeb01
docker tag development:latest $dockerpath
echo "Docker ID and Image: $dockerpath"



# Step 3:
# Push image to a docker repository
docker push $dockerpath
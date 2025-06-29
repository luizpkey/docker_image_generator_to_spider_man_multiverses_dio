#!/bin/bash

# Config
REPO_URL="git@github.com:luizpkey/spider-man-multiverses-dio.git"
CLONE_DIR="project"
DOCKER_IMAGE_NAME="multiversepage:latest"

# Step 1: Clone the repository
if [ -d "$CLONE_DIR" ]; then
   cd $CLONE_DIR
   git pull origin main
   cd ..
else
   git clone $REPO_URL $CLONE_DIR
fi

# Step 2: Generate Dockerfile
cat <<EOF > $CLONE_DIR/Dockerfile
FROM nginx:alpine
COPY . /usr/share/nginx/html
EOF

# Step 3: Build the Docker image
docker build -t $DOCKER_IMAGE_NAME $CLONE_DIR

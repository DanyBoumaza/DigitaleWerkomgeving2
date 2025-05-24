set -e

IMAGE_NAME=apache-demo-site
CONTAINER_NAME=apache-demo-container

docker build -t $IMAGE_NAME .
docker run -d --name $CONTAINER_NAME -p 81:80 $IMAGE_NAME

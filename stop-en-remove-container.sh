set -e

CONTAINER_NAME=apache-demo-container

docker stop $CONTAINER_NAME
docker rm $CONTAINER_NAME

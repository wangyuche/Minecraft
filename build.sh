export PROJECT_NAME=minecraft
export PROJECT_TAG=0.0.0
docker rmi -f $(docker images | grep ${PROJECT_NAME})
docker build -t ${PROJECT_NAME}:${PROJECT_TAG} .
docker tag ${PROJECT_NAME}:${PROJECT_TAG} arieswangdocker/${PROJECT_NAME}:${PROJECT_TAG}
docker push arieswangdocker/${PROJECT_NAME}:${PROJECT_TAG}
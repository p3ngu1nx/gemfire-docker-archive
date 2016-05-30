#./build-custom-classes.sh
docker-compose down
docker-compose build
docker-compose up
docker logs envear_server_1

#clean up docker - remove unused images
docker rmi -f $(docker images | grep "<none>" | awk "{print \$3}")

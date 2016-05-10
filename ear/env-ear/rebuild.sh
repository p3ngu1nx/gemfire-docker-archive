./build-custom-classes.sh
docker-compose down
docker-compose build
docker-compose up
docker logs envear_server_1
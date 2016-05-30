#clean up docker - remove unused images
docker rmi -f $(docker images | grep "<none>" | awk "{print \$3}")

docker-compose down
docker-compose build
docker-compose up
(echo "***************  SERVER **************"; docker-compose up server ) &
(sleep 20; echo "***************  WORKER **************"; docker-compose up worker) &
(sleep 25; echo "***************  CLIENT **************"; docker-compose up consumer) &
(sleep 30; echo "***************  SERVER **************"; docker logs envear_server_1; docker exec -it envear_server_1 gfsh "stop server"; docker exec -it envear_server_1 gfsh "start server --name=server1 --log-level=warn --cache-xml-file=xml/Server.xml --properties-file=gemfire.properties --classpath=/Pivotal_GemFire/SampleCode/quickstart/classes:/Pivotal_GemFire/lib/encryption.jar") &


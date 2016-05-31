(echo "***************  DOCKER **************"; docker-compose build) &
(sleep 5; echo "***************  LOCATOR **************"; docker-compose up locator ) &
(sleep 6 ; echo "***************  SERVER **************"; docker-compose up server) &
(sleep 30; echo "***************  CONSUMER **************"; docker-compose up consumer ) &
(sleep 35; echo "***************  WORKER **************"; docker-compose up worker ) &
(sleep 40; echo "***************  SERVER **************"; docker exec -it envear_locator_1 gfsh -e "connect" -e "stop server --name=server1" -e "start server --name=server1" ;) &
(sleep 50; echo "***************  DONE **************"; docker logs envear_server_1; docker exec -it envear_server_1 cat /Pivotal_GemFire/SampleCode/quickstart/server1/server1.log; docker-compose down )
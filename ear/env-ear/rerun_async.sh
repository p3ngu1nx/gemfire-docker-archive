(echo "***************  DOCKER **************"; docker-compose down; docker-compose build) &
(sleep 20; echo "***************  LOCATOR **************"; docker-compose up locator ) &
(sleep 23 ; echo "***************  SERVER **************"; docker-compose up server) &
(sleep 47; echo "***************  CONSUMER **************"; docker-compose up consumer ) &
(sleep 57; echo "***************  WORKER **************"; docker-compose up worker ) &
(sleep 67; echo "***************  SERVER **************"; docker exec -it envear_locator_1 gfsh -e "connect" -e "stop server --name=server1" -e "start server --name=server1" ;) &
(sleep 82; echo "***************  WORKER **************"; docker-compose up worker ) &
(echo "hello")

#(sleep 72; echo "***************  DONE **************"; docker logs envear_server_1; docker exec -it envear_server_1 tail -30 server1/persistData1/BACKUPds1_1.crf; docker exec -it envear_server_1 cat /Pivotal_GemFire/SampleCode/quickstart/server1/server1.log; docker-compose down )

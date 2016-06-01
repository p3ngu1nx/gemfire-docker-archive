(echo "***************  DOCKER **************"; docker-compose down; docker-compose build ) &
(sleep 15; echo "***************  LOCATOR **************"; docker-compose up locator ) &
(sleep 30 ; echo "***************  SERVER **************"; docker-compose up server ) &
(sleep 60; echo "***************  CONSUMER **************"; docker-compose up consumer ) &
(sleep 70; echo "***************  WORKER **************"; docker-compose up worker ) &
(sleep 80; echo "***************  SERVER RESTART **************"; docker exec -it envear_locator_1 gfsh -e "connect" -e "stop server --name=server1" -e "start server --name=server1" ;) &
(sleep 110; echo "***************  RESTART WORKER **************"; docker rm envear_worker_1; docker-compose up worker ) &
# (sleep 100; echo "***************  DONE **************"; docker logs envear_server_1; docker exec -it envear_server_1 tail -30 server1/persistData1/BACKUPds1_1.crf; docker exec -it envear_server_1 cat /Pivotal_GemFire/SampleCode/quickstart/server1/server1.log; docker-compose down; )

#Get Logs
#docker exec -it envear_server_1 cat /Pivotal_GemFire/SampleCode/quickstart/server1/server1.log
# docker exec -it envear_server_1 tail -30 server1/persistData1/BACKUPds1_1.crf
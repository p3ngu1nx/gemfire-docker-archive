docker stop locator
docker rm locator 
docker rmi pivotal/gemfire-locator

docker stop server
docker rm server 
docker rmi pivotal/gemfire-server

docker stop client
docker rm client 
docker rmi pivotal/gemfire-client
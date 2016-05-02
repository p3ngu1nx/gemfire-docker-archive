docker stop locator
docker rm locator 
docker rmi boriza/gemfire-locator

docker stop server
docker rm server 
docker rmi boriza/gemfire-server

docker stop client
docker rm client 
docker rmi boriza/gemfire-client
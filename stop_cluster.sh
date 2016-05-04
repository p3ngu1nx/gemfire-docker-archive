# docker stop locator
# docker rm locator 
# docker rmi boriza/gemfire-locator

# docker stop server
# docker rm server 
# docker rmi boriza/gemfire-server

docker-compose -f docker-compose.yml -f quickstart/docker-compose.yml down

docker-compose -f client/docker-compose.yml down

# docker stop client
# docker rm client 
# docker rmi boriza/gemfire-client
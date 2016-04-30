cd /bk/Dev/Docker/gemfire/docker-gemfire/locator
docker build -t pivotal/gemfire-locator .
docker run -p 41111:41111 -p 1099:1099 --name locator -dti --add-host locatorhost:172.17.0.2 --add-host dockerhost:192.168.99.100 -d pivotal/gemfire-locator 
cd /bk/Dev/Docker/gemfire/docker-gemfire/server
docker build -t pivotal/gemfire-server .
docker run -p 40404:40404 --name server -dti --add-host dockerhost:192.168.99.100 --add-host locatorhost:172.17.0.2 -d pivotal/gemfire-server 
cd /bk/Dev/Docker/gemfire/docker-gemfire/client
docker build -t pivotal/gemfire-client .
docker run --name client -dti --add-host locatorhost:172.17.0.2 --add-host dockerhost:192.168.99.100 -d pivotal/gemfire-client

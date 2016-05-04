# cd locator
# docker build -t boriza/gemfire-locator .
# docker run -p 41111:41111 -p 1099:1099 --name locator -dti --add-host locatorhost:172.17.0.2 --add-host dockerhost:192.168.99.100 -d boriza/gemfire-locator 
# cd..
# cd server
# docker build -t boriza/gemfire-server .
# docker run -p 40404:40404 --name server -dti --add-host dockerhost:192.168.99.100 --add-host locatorhost:172.17.0.2 -d boriza/gemfire-server 
# cd ..

docker-compose -f docker-compose.yml -f quickstart/docker-compose.yml up


# cd client 
# docker-compose run client /bin/bash
# cd..


# cd client
# docker build -t boriza/gemfire-client .
# docker run --name client -dti --add-host locatorhost:172.17.0.2 --add-host dockerhost:192.168.99.100 --net=gemfire_net -d boriza/gemfire-client
# cd..
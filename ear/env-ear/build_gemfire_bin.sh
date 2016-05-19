# prepare the environment

#sudo ln -s /Users/boris/Documents/Dev/Dev/gemfire/gemfire-dev/gemfire821X_maint ~/Dev/gemfire-dev
#sudo ln -s /Users/boris/Documents/Dev/Dev/gemfire/gemfire-docker-ear/gemfire-docker/ear/env-ear ~/Dev/gemfire-docker-ear

#script:
rm ~/Dev/gemfire-docker-ear/base/Pivotal_GemFire.tar
tar -cf tar -cf ~/Dev/gemfire-docker-ear/base/Pivotal_GemFire.tar ~/Dev/gemfire-dev/GEMFIRE_OUTPUT


#build base docker
docker build -t boriza/gemfire-base-ear .

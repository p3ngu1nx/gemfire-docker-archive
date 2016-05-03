rm -r extra-classes
mkdir extra-classes
mkdir -p extra-classes/com/gemstone/gemfire/distributed

cp /Users/boriskravtsov/Google_Drive/Dev/gemfire/incubator-geode/gemfire-core/build/classes/main/com/gemstone/gemfire/distributed/ServerLauncher.class extra-classes/com/gemstone/gemfire/distributed


#gfsh "start server --name=server1  --classpath=/Users/boriskravtsov/Google_Drive/Dev/gemfire/incubator-geode/gemfire-core/build/classes/main/com/gemstone/gemfire/distributed/ServerLauncher.class"

FROM boriza/gemfire-base

ENV SERVER_NAME $(date +NAME%Y%m%H%M%S)
COPY gemfire.properties $GEMFIRE/SampleCode/quickstart/

WORKDIR $GEMFIRE/SampleCode/quickstart

CMD java -cp "$GEMFIRE/SampleCode/quickstart/classes:$GEMFIRE/lib/server-dependencies.jar" quickstart.ClientConsumer all-keys
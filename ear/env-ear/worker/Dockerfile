FROM boriza/gemfire-base

COPY gemfire.properties $GEMFIRE/SampleCode/quickstart/

COPY xml/Client.xml $GEMFIRE/SampleCode/quickstart/xml

ENV SERVER_NAME $(date +NAME%Y%m%H%M%S)

WORKDIR $GEMFIRE/SampleCode/quickstart

CMD java -cp "$GEMFIRE/SampleCode/quickstart/classes:$GEMFIRE/lib/server-dependencies.jar" quickstart.ClientWorker

FROM boriza/gemfire-base

COPY gemfire.properties $GEMFIRE/SampleCode/quickstart/

WORKDIR $GEMFIRE/SampleCode/quickstart

CMD java -cp "$GEMFIRE/lib/server-dependencies.jar:$GEMFIRE/SampleCode/quickstart/classes" quickstart.PushConsumer

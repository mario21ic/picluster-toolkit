FROM alpine
ARG TARGETPLATFORM

RUN echo "I'm building for $TARGETPLATFORM"
RUN echo "I was built for $TARGETPLATFORM" > /message.txt

CMD cat /message.txt

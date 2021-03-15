FROM alpine:latest

RUN apk --no-cache add zip

ADD malware.zip /

RUN unzip -P 123456 -f malware.zip && chmod u+x malware

ENTRYPOINT ["/malware"]

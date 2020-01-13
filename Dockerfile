FROM alpine

RUN apk add --no-cache docker python py-pip
RUN pip install docker && pip install testinfra


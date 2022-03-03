FROM alpine:3.4

RUN apk update
RUN apk add build-base
RUN apk add git
RUN apk add libxml2-dev
RUN git clone https://github.com/distsys-MQ/ds-sim
RUN cd ds-sim/src && make ds-server

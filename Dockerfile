FROM golang:1.8-alpine

RUN apt update && apk add --no-cache ca-certificates \
	&& apt add git

ADD entry.sh /go/ 

RUN chmod +x /go/entry.sh
ENTRYPOINT /go/entry.sh

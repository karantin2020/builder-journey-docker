FROM golang:1.8-alpine

ADD entry.sh /go/ 

RUN chmod +x /go/entry.sh
ENTRYPOINT /go/entry.sh

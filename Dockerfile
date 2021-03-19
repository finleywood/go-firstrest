FROM golang:1.16.2-alpine

ENV GIN_MODE=release

RUN mkdir /app

ADD . /app

WORKDIR /app
#RUN go mod download
RUN go build -o main .
EXPOSE 8080
CMD [ "./main" ]

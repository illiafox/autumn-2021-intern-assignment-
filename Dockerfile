FROM golang:1.18-alpine

RUN apk add git

RUN mkdir /server

COPY . /server

WORKDIR /server/cmd

RUN go build -o bin .

EXPOSE 8080

CMD /server/cmd/bin $ARGS
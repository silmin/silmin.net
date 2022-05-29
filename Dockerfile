FROM golang:1.18-alpine

WORKDIR /root

RUN apk add git

COPY . .

RUN go mod tidy && go build -o app .

CMD ["/root/app"]


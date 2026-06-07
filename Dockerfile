FROM golang:1.24-alpine

WORKDIR /app

COPY ../final-main .

RUN go mod download

RUN go build -o tracker .

CMD ["./tracker"]
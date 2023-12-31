FROM  docker.io/golang:1.19.5-alpine3.17

WORKDIR /usr/src/app
COPY go.mod go.sum ./
RUN go mod download

COPY . .
RUN go build -v -o /usr/local/bin/app ./...

CMD [ "/usr/local/bin/app" ]


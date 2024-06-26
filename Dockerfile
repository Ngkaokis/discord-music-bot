FROM golang:1.20.5

WORKDIR /app

RUN go install github.com/cosmtrek/air@latest

COPY go.mod go.sum ./
RUN go mod download
COPY . ./

CMD ["make", "dev"]

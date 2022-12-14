# Build stage
FROM golang:1.19.4-alpine3.17 AS builder
WORKDIR /app
COPY . .
RUN go build -o main main.go

# Run
FROM alpine:3.17
WORKDIR /app
COPY --from=builder /app/main .
COPY app.env .

EXPOSE 8080

CMD ["/app/main"]
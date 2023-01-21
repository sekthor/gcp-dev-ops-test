FROM golang:1.19-alpine

WORKDIR /app

COPY ./ ./
RUN go mod download
RUN go build -o /server ./cmd/server/main.go
#EXPOSE 8080

FROM alpine:latest
WORKDIR /
COPY --from=0 /server ./
CMD ["./server"]

FROM golang:1.17-alpine AS build

WORKDIR /app
COPY ./src/*.go ./
RUN go build -o hello-mattermost main.go

FROM alpine:3.15
WORKDIR /app
COPY --from=build /app/hello-mattermost .
EXPOSE 8080
ENTRYPOINT ["/hello-mattermost"]
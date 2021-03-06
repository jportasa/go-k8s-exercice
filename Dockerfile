FROM golang:1.17-alpine AS build

WORKDIR /app
ENV GOARCH=amd64
ENV GOOS=linux
COPY ./src/*.go ./
RUN go build -o /hello-mattermost main.go

FROM alpine:3.15
WORKDIR /
COPY --from=build /hello-mattermost /hello-mattermost
EXPOSE 8080
ENTRYPOINT ["/hello-mattermost"]

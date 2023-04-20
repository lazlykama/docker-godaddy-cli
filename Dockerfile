FROM golang:1.20.2-alpine3.17 as build

WORKDIR /app

# Install
RUN apk add git make
RUN git clone https://github.com/cabemo/godaddy-cli.git .
RUN make build

# Run env
FROM alpine:3.17 as main
COPY --from=build /app/godaddy /usr/local/bin/
ENTRYPOINT ["godaddy"]

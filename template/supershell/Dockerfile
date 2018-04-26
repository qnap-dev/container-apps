FROM alpine:edge

RUN apk add --update htop ncdu zsh
ADD app.sh /

ENTRYPOINT /app.sh

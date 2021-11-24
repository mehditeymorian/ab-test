FROM alpine:latest

RUN apk add apache2-utils

WORKDIR /app/

COPY infloop.sh .

RUN chmod +x infloop.sh

CMD ["./infloop.sh"]

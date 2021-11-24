FROM alpine:latest

RUN apk add apache2-utils
RUN apk add nano
RUN apk add make

WORKDIR /app/

COPY infloop.sh .

RUN chmod +x infloop.sh

RUN chmod +xrw /app/

CMD ["./infloop.sh"]



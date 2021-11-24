FROM alpine:latest

RUN apk add apache2-utils

WORKDIR /app/

COPY infloop.sh .

RUN useradd -ms /bin/sh admin

RUN chmod +x infloop.sh

RUN chown -R admin:admin /app/

RUN chmod +xrw /app/

USER admin


CMD ["./infloop.sh"]



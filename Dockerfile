FROM alpine:latest

RUN apk add apache2-utils
RUN apk add nano
RUN apk add make

RUN adduser -D admin

WORKDIR /app/

RUN chown admin /app

RUN chgrp admin /app

COPY infloop.sh .

RUN chmod +rwx infloop.sh

USER admin

CMD ["./infloop.sh"]



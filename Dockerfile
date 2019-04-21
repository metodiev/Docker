#getting base image ubuntu
FROM ubuntu

MAINTAINER miroslav pal <autimation.mail.com>

RUN apt-get update

CMD ["echo", "Hello World...! from my first image"]

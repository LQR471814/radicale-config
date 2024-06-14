FROM python:3.12-alpine

RUN pip install radicale

WORKDIR /etc/radicale
COPY ./config.ini ./config

WORKDIR /root/radicale
COPY ./users ./users

CMD python3 -m radicale


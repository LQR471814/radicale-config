FROM python:3.12-alpine

RUN pip install radicale

WORKDIR /root/radicale
COPY ./users ./users

CMD python3 -m radicale --config /root/radicale/collections/config


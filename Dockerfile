FROM python:3.12-alpine

RUN pip install radicale

WORKDIR /root/radicale
COPY ./config.ini /root/radicale/collections/config

CMD python3 -m radicale --config /root/radicale/collections/config


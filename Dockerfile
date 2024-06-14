FROM python:3.12-alpine

RUN pip install radicale

WORKDIR /etc/radicale
COPY ./config.ini ./config

CMD python3 -m radicale --storage-filesystem-folder=~/radicale/collections


FROM python:3.8-slim-buster

RUN apt-get update && \
    apt-get -y install python3-pip git && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean
RUN pip install poetry==1.1.13 && pip install coverage

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
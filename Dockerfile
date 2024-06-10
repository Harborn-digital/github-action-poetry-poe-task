# For Resilient Cities Network, which is currently not compatible with Python 3.12.4
# due to an issue in langchain:
# https://stackoverflow.com/questions/78593700/langchain-community-langchain-packages-giving-error-missing-1-required-keywor
FROM python:3.12.3-slim-bookworm

RUN apt-get update && \
    apt-get -y install python3-pip git && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean
RUN pip install poetry==1.7.* && pip install coverage

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

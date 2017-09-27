FROM python:3.6
# yeah I have not yet found a better way to differentiate between test/prod container..
ARG REQUIREMENTS_FILE

MAINTAINER Christoph Ulshoefer <c@culshoefer.com>       

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

COPY application/requirements.txt ./
COPY application/$REQUIREMENTS_FILE ./
RUN pip install --no-cache-dir -r $REQUIREMENTS_FILE
# RUN apt-get remove --purge postgresql
RUN apt-get autoremove
COPY application/manage.py /usr/src/app/manage.py
COPY application/application /usr/src/app/application
COPY application/start.sh /usr/src/app

WORKDIR /usr/src/app
ENTRYPOINT ["./start.sh"]

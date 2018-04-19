FROM tiangolo/uwsgi-nginx-flask:python3.6
MAINTAINER AFC "alexisfcote@gmail.com"
RUN apt-get update
RUN apt-get install -y --allow-unauthenticated build-essential
COPY app /app
WORKDIR /app
RUN pip install -r requirements.txt

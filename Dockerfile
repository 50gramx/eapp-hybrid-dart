FROM python:3.7-stretch
EXPOSE 50601
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
COPY ./serve.sh /app/serve.sh
COPY ./fifty_gramx/build/web /app
WORKDIR /app
ENTRYPOINT ["sh", "serve.sh"]
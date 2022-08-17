FROM python:3.7-stretch
EXPOSE 50601
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
COPY ./eapp_ethospay.sh /app/eapp_ethospay.sh
COPY ./build/web /app
WORKDIR /app
ENTRYPOINT ["sh", "eapp_ethospay.sh"]
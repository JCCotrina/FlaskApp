FROM ubuntu:16.04

LABEL maintainer="Juan Cotrina" email="juan.cotrina.m@uni.pe"

RUN apt-get update -y && \
apt-get install -y python-pip python-dev

RUN pip install -r requirements.txt

COPY . /app

EXPOSE 8080

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]

FROM python:3.7

COPY ./app /app

RUN apt-get update -y

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

LABEL Name=dockerized_connexion_template Version=0.0.1

WORKDIR /app
ADD . /app

CMD ["python","-m","app"]
#CMD ["uwsgi", "--http", ":8080", "-w", "app"]
#CMD ["uwsgi", "--http", ":8080", "-w", "app," "-p", "16"]


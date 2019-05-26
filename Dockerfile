FROM tiangolo/uwsgi-nginx:python3.7

COPY ./app /app
RUN pip install -r /app/requirements.txt

LABEL Name=dockerized_connexion_template Version=0.0.1
EXPOSE 80

WORKDIR /app
ADD . /app

RUN python3 -m pip install -r requirements.txt
CMD ["python3", "-m", "microservice"]


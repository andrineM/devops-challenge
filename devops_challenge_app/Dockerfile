FROM python:3.8-slim
MAINTAINER Andrine Njagi <addymurugi@gmail.com>

ENV PROJECT_ROOT /app
WORKDIR $PROJECT_ROOT

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE 8000
COPY . .
CMD python manage.py runserver 0.0.0.0:8000

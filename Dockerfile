# FROM python:3.7-alpine
# docker-compose run web python manage.py createsuperuser
# Test ENV
FROM python:3.7
COPY . /app
WORKDIR /app

RUN pip install -r requirements.txt

CMD ["gunicorn", "-w 4", "main:app"]

# Test ENV End

# FROM python:3.7-alpine
# MAINTAINER Pshop

# ENV PYTHONUNBUFFERED 1

# COPY ./requirements.txt /requirements.txt
# # RUN apk add --update --no-cache postgresql-client
# # RUN apk add --update --no-cache --virtual .tmp-build-deps \
# #     gcc libc-dev linux-headers postgresql-dev
# RUN pip install -r /requirements.txt
# RUN apk del .tmp-build-deps

# RUN mkdir /app
# WORKDIR /app
# COPY ./app /app

# RUN adduser -D user
# USER user
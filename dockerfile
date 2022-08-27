FROM python:3.10.6-alpine
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
RUN apk update && apk add postgresql-dev gcc python3-dev musl-dev
WORKDIR /djangoexam
COPY requirements.txt /djangoexam/
RUN pip install -r requirements.txt
COPY . /djangoexam/
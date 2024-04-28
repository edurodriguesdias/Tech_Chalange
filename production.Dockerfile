FROM python:3.10-slim

WORKDIR /app

COPY . /app

RUN pip install -r requirements/requirements.txt --ignore-installed

WORKDIR /app

EXPOSE 8000

CMD ["src.main.handler"]
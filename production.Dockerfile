FROM public.ecr.aws/lambda/python:3.10

WORKDIR /app

COPY . /app

RUN pip install -r requirements/requirements.txt --ignore-installed

WORKDIR /app

EXPOSE 80

CMD ["src.main.handler"]
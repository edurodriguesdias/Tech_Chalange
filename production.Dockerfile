FROM public.ecr.aws/lambda/python:3.10

WORKDIR /app

COPY . /app

RUN pip install -r requirements/requirements.txt --ignore-installed

WORKDIR /app

CMD ["src.handler"]
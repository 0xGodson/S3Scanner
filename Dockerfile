FROM python:3.13.0a4-alpine
COPY . /app
WORKDIR /app
RUN pip install boto3
RUN pip install .
ENTRYPOINT ["python", "-m", "S3Scanner"]
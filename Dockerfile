FROM python:3.13.3-alpine
COPY . /app
WORKDIR /app
RUN pip install boto3
RUN pip install .
ENTRYPOINT ["python", "-m", "S3Scanner"]
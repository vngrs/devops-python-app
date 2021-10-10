FROM python:3.8-alpine
RUN apk add gcc musl-dev mariadb-connector-c-dev
COPY requirements.txt /tmp
WORKDIR /tmp
RUN pip install --upgrade pip && \
    pip install -r requirements.txt
RUN mkdir /app
WORKDIR /app
COPY app.py .
ENTRYPOINT [ "python" ]
CMD [ "app.py" ]
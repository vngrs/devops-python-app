FROM alpine
FROM python:3.7
COPY requirements.txt /tmp
WORKDIR /tmp
RUN pip install --upgrade pip && \
    pip install -r requirements.txt
RUN mkdir /app
WORKDIR /app
COPY app.py .
ENTRYPOINT [ "python" ]
CMD [ "app.py" ]
FROM python:alpine3.8

COPY requirements.txt /app/requirements.txt

WORKDIR /app
RUN ls -la
RUN pip install -r requirements.txt
COPY . .
EXPOSE 5000

CMD python ./index.py

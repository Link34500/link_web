FROM python:3.10-slim

RUN mkdir /app
WORKDIR /app/

COPY requierements.txt .

RUN pip install -r requierements.txt

COPY . .

CMD [ "python" ]
FROM python:3.10-slim

RUN mkdir /app
WORKDIR /app/

# Install system dependencies
RUN apt update && apt install -y gcc libpq-dev

# Copy requirements first for Docker layer caching
COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

COPY . .


EXPOSE 5000

CMD ["gunicorn" ,"--workers" ,"3","--bind" ,"unix:link_web.sock", "wsgi:app"]
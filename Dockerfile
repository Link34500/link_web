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

RUN useradd appuser
RUN chown -R appuser /app/
RUN chmod u=rx /app/

USER appuser


EXPOSE 5000

CMD ["gunicorn", "-w 4", "-b 0.0.0.0:5000", "wsgi:app"]
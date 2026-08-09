FROM python:3.11

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

CMD ["sh", "-c", "gunicorn --workers 4 --bind 0.0.0.0:$PORT app:app"]
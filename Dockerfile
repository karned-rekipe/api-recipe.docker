FROM python:3.11-slim

ENV PYTHONUNBUFFERED True

ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . ./

ENV PORT 8000

RUN pip install --no-cache-dir -r requirements.txt

CMD exec uvicorn ingredient.main:app --host 0.0.0.0 --port ${PORT} --workers 1

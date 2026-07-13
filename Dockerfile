FROM python:3.12-slim AS builder

WORKDIR /build

COPY requirements.txt .

RUN pip install \
    --no-cache-dir \
    --prefix=/install \
    -r requirements.txt


FROM python:3.12-slim

ENV APP_ENV=production
ENV APP_PORT=8005
ENV GROUP_NAME="Grupo 5"
ENV GROUP_MEMBERS="Martín Balarezo, Fernando Cuenca"
ENV COURSE_NAME="Curso de Profesionalización en DevOps"
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

RUN useradd \
    --create-home \
    --shell /bin/bash \
    appuser

COPY --from=builder /install /usr/local
COPY app/ .

RUN chown -R appuser:appuser /app

USER appuser

EXPOSE 8005

HEALTHCHECK --interval=30s --timeout=5s --retries=3 --start-period=10s \
    CMD python -c "import urllib.request; urllib.request.urlopen('http://localhost:8005/health')"

CMD ["sh", "-c", "uvicorn main:app --host 0.0.0.0 --port ${APP_PORT}"]

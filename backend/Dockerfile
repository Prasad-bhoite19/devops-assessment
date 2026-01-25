# ---------- Stage 1: Builder ----------
FROM python:3.11-slim AS builder

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /install

# Copy only requirements first (cache optimization)
COPY requirements.txt .

RUN pip install --no-cache-dir --prefix=/install \
    -r requirements.txt


# ---------- Stage 2: Runtime ----------
FROM python:3.11-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Create non-root user
RUN addgroup --system app && adduser --system --group app

WORKDIR /app

# Copy installed dependencies from builder
COPY --from=builder /install /usr/local

# Copy application code
COPY . .

RUN chown -R app:app /app

USER app

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

#stage 1
FROM python:3.10-slim AS builder

WORKDIR /app

Copy requirement.txt .

RUN pip install --no-cache-dir -r requirement.txt --target=/app/deps

COPY . .

#stage 2

FROM gcr.io/distroless/python3-debian12

WORKDIR /app

COPY --from=builder /app/deps /app/deps
COPY --from=builder /app .

ENV PYTHONPATH="/app/debs"
EXPOSE 5000

CMD ["python", "app.py"]


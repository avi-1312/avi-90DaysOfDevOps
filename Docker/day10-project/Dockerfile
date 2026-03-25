
FROM python:3.10-slim

WORKDIR /app

Copy requirement.txt .
RUN pip install --no-cache-dir -r requirement.txt

COPY . .

RUN useradd -m appuser
USER appuser

EXPOSE 5000

CMD ["python", "app.py"]


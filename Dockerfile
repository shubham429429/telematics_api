FROM python:3.12-slim

WORKDIR /app

RUN adduser --disabled-password --gecos "" appuser

COPY requirement.txt .
RUN pip install --no-cache-dir -r requirement.txt

COPY . .

RUN chown -R appuser:appuser /app
USER appuser

EXPOSE 8000

CMD ["fastapi", "run", "main.py", "--port", "8000"]



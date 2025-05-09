FROM python:3.10-slim
COPY nonexistent.py .
CMD ["python", "app.py"]

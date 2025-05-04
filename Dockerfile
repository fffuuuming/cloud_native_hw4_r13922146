FROM python:3.10-slim
COPY app.py .
CMD ["python", "app_non_exist.py"]

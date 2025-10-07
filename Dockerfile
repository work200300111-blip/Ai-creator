FROM python:3.9-slim
RUN apt-get update && apt-get install -y ffmpeg
WORKDIR /app
COPY worker/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY worker/ .
CMD ["python", "worker.py"]

FROM python:3.13-slim
WORKDIR /dockerapp
COPY /app/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY /app .

ENV GREETING="Hello, Docker!"
EXPOSE 8000
CMD ["python", "app.py"]
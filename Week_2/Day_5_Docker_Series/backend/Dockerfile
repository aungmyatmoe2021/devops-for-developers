# Base Image
FROM python:3.11-slim
# Set working directory
WORKDIR /app

# Copy dependencies file
COPY requirements.txt .
# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY app.py .
# Document the port
EXPOSE 5000
# Default environment variable
ENV APP_NAME="Docker Compose Demo From Aung Myat Moe"
# Command to run the app
CMD ["python","app.py"]
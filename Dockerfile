# Use official Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy code files
COPY requirements.txt requirements.txt
COPY app1.py app1.py

# Install dependencies
RUN pip install -r requirements.txt

# Expose port
EXPOSE 5000
# Command to run app
CMD ["python", "app1.py"]

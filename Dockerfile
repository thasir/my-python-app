# Use the official Python base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy requirements file
COPY requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt

# Copy the application code
COPY . .

# Expose the application on port 8080
EXPOSE 8080

# Run the application
CMD ["python3", "app.py"]

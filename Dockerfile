# Use an official Python runtime as a base image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Copy local files into the container
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the app runs on
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]

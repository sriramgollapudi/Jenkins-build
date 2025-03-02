# Use an official Python image
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy application files
COPY app.py requirements.txt ./

# Install dependencies
RUN pip install -r requirements.txt

# Expose the application port
EXPOSE 5000

# Start the Flask app
CMD ["python", "app.py"]

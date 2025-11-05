# Use a lightweight Python image
FROM python:3.11-slim

# Set working directory in the container
WORKDIR /app

# Copy and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the full project into the container
COPY . .

# Change directory to where manage.py is
WORKDIR /app/portfolio

# Expose port 8000
EXPOSE 8000

# Run the Django development server
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]

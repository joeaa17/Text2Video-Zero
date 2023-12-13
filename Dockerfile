# Use the Python 3.7 base image
FROM python:3.7

# Copy the contents of the current directory to the /app directory in the image
COPY . /app

# Set the working directory to /app
WORKDIR /app

# Install dependencies from requirements.txt
RUN pip install --use-pep517 -r requirements.txt

# Expose the port that your application listens on (adjust if necessary)
EXPOSE 7860

# Run your application (assuming it's in app.py)
CMD python app.py

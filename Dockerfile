# Use the Python 3.7 base image
FROM python:3.7

# Copy the contents of the current directory to the /app directory in the image
COPY . /app

# Set the working directory to /app
WORKDIR /app

# Install dependencies from requirements.txt
RUN virtualenv --system-site-packages -p python3.9 venv
RUN source venv/bin/activate
RUN pip install --use-pep517 -r requirements.txt

# Expose the port that your Gradio application listens on (8000 in this example)
EXPOSE 29500

# Run your Gradio application (adjust the port as needed)
CMD ["python", "app.py", "--use_gradio", "--use_opencv", "--use_tensorrt", "--port", "29500"]

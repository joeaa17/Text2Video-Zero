FROM python:3.7
COPY . /app
WORKDIR /app
RUN pip install --use-pep517 -r requirements.txt
EXPOSE 5000
CMD python /app/app.py

FROM python:3.7
RUN pip install --use-pep517 -r requirements.txt
EXPOSE 5000
CMD python app.py

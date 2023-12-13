FROM python:3.7
COPY . /app
WORKDIR /app
RUN pip install --use-pep517 --upgrade pip
RUN pip install --use-pep517 -r requirements.txt
RUN conda env create -f environment.yaml
EXPOSE 5000
CMD python app.py

FROM python:3.6.6

COPY ./requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY ./app /app
WORKDIR /app

EXPOSE 8050
ENTRYPOINT ["python", "app.py"]
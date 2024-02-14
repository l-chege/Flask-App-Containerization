FROM python:3.8-slim

WORKDIR /app
COPY ./flask_app/requirements.txt /app/requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt
COPY . /app
EXPOSE 80
ENV NAME World
CMD [ "python", "main.py" ]
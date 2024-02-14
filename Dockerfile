FROM python:3.8-slim

WORKDIR /app
COPY . /app
RUN pip install --tusted-host pypi.python.org -r requirements.txt
EXPOSE 80
ENV NAME World
CMD [ "python", "main.py" ]
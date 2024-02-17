# python runtime as base image
FROM python:3.8-slim

# set working dir
WORKDIR /app

# copy requirements file to working dir
COPY  requirements.txt .

# install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# copy the current dir code into the container
COPY main.py .

# expose the port on which app will run
EXPOSE 80

# define environment variable
ENV NAME World

# command to run the app
CMD [ "python", "main.py" ]
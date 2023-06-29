# The image you are going to inherit your Dockerfile from
FROM python:3.8-alpine
# Necessary, so Docker doesn't buffer the output and that you can see the output 
# of your application (e.g., Django logs) in real-time.
ENV PYTHONUNBUFFERED 1
# Make a directory in your Docker image, which you can use to store your source code
RUN mkdir /django_api
# Set the /django_recipe_api directory as the working directory
WORKDIR /django_api
# Copies from your local machine's current directory to the django_recipe_api folder 
# in the Docker image
COPY . .
# Copy the requirements.txt file adjacent to the Dockerfile 
# to your Docker image
COPY ./requirements.txt /requirements.txt

RUN apk update \
    && apk add --no-cache gcc musl-dev libffi-dev mariadb-connector-c-dev

RUN pip install --upgrade pip
# Install the requirements.txt file in Docker image
RUN pip install -r /requirements.txt
# Create a user that can run your container

USER root

RUN chmod -R 777 /django_api

RUN adduser -D user

USER user

CMD [ "python3", "manage.py", "runserver", "0.0.0.0:8000" ]
# set base image(host os)
FROM python:3.8

# set working directory in the container
WORKDIR /code

# code the dependencies file to the working directory
COPY requirements.txt .

# install dependencies
RUN pip install -r ./requirements.txt

# copy the content to the working directory
COPY server.py .

# command to run on container start
CMD [ "python","./server.py" ]

FROM 001239102331.dkr.ecr.us-east-1.amazonaws.com/cruddur-python:3.10-slim-buster

# make a new folder Inside Container
WORKDIR /backend-flask 

#Outside Container -> Inside Container
#This contains the libraries want to install to run the app
COPY requirements.txt requirements.txt

#Inside Container
RUN pip3 install -r requirements.txt

#Outside Container -> Inside Container
# . mean everything in the current directory
# first period . /backend-flask (outside the container)
# second period . /backend-flask (inside the container)

COPY . .

#Set environment variables
ENV FLASK_DEBUG=1

EXPOSE ${PORT}

#CMD (command)
#python3 -m flask run --host=0.0.0.0 --port=4567
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0", "--port=4567"]
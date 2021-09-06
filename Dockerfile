FROM python:3.7.5-slim

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev && \
    apt-get install -y build-essential cmake && \
    apt-get install -y libopenblas-dev liblapack-dev && \
    apt-get install -y libx11-dev libgtk-3-dev
    
#COPY ./requirements.txt /requirements.txt

#WORKDIR /


#FROM python:3.6
COPY . /app
WORKDIR /app

EXPOSE 8080

RUN pip3 install -r requirements.txt
#RUN pip install -r requirements.txt
ENTRYPOINT [ "python" ]
CMD [ "app.py" ]

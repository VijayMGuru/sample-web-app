FROM ubuntu:14.04
MAINTAINER Vijay <vijayaguru.m@gmail.com>
RUN yum update -y
RUN DEBIAN_FRONTEND=noninteractive yum install -y -q python-all python-pip 
ADD ./webapp/requirements.txt /tmp/requirements.txt
RUN pip install -qr /tmp/requirements.txt
ADD ./webapp /opt/webapp/
WORKDIR /opt/webapp
EXPOSE 5000
CMD ["python", "app.py"]


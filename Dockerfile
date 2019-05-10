#############################Docker File Addition Program
#use python to install
FROM python:3.6

#Set Maintainer
MAINTAINER dushant.bhinge@synerzip.com

WORKDIR /usr/src/app

COPY . /usr/src/app

RUN pip install virtualenv

RUN virtualenv pymote_env

RUN chmod 777 pymote_env/bin/activate

RUN pymote_env/bin/activate

CMD python /usr/src/app/Addition/AdditionTwoNumber.py

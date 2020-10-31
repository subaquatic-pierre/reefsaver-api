FROM python:slim

ENV FLASK_APP=api
EXPOSE 5000
COPY requirements.txt /www/
COPY api/ /www/api/

WORKDIR /www

RUN pip3 install -r requirements.txt

CMD flask run -h 0.0.0.0 -p 5000


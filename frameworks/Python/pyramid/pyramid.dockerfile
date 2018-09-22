FROM python:3.6.6-stretch

ADD ./ /pyramid

WORKDIR /pyramid

RUN pip3 install -r /pyramid/requirements.txt

CMD gunicorn wsgi:app -c gunicorn_conf.py

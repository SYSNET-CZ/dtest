#FROM django
FROM python:3
RUN apt-get update && apt-get upgrade -y && apt-get autoremove && apt-get autoclean

ARG PROJECT=dtest
ARG PROJECT_DIR=/var/www/${PROJECT}
RUN mkdir -p $PROJECT_DIR
WORKDIR $PROJECT_DIR
ADD . $PROJECT_DIR
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 8000
STOPSIGNAL SIGINT
ENTRYPOINT ["python", "manage.py"]
CMD ["migrate"]
CMD [ "runserver", "0.0.0.0:8000" ]

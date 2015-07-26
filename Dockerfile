FROM python:3-onbuild
MAINTAINER Samantha Roach <sam@roach-uk.com >

RUN python /usr/src/app/manage.py collectstatic --noinput
RUN python /usr/src/app/manage.py makemigrations --noinput
RUN python /usr/src/app/manage.py migrate --noinput
ENTRYPOINT ["python", "/usr/src/app/manage.py"]
CMD ["help"]

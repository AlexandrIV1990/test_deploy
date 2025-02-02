#!/usr/bin/env sh
set -o
echo "Start deploy"
python ./manage.py migrate
python ./manage.py collectstatic --noinput
uwsgi --ini /code/uwsgi.ini --http 0.0.0.0:8080
echo "Deployment completed!"
#!/bin/bash

echo Starting Gunicorn.
exec gunicorn application.wsgi:app \
     --bind 0.0.0.0:8000 \
     --workers 3

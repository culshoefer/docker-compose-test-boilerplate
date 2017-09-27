#!/bin/bash

docker-compose -f common.yml -f docker-compose-prod.yml build

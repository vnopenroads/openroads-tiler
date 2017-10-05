#!/bin/bash

echo export AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID >> .env
echo export AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY >> .env
echo export DATABASE_URL=$DATABASE_URL >> .env
echo export S3_TEMPLATE=$S3_TEMPLATE >> .env
echo export PATH=$PATH:/usr/local/bin >> .env
echo '*/5 * * * * . /opt/app/.env; cd /opt/app; node index.js >> /opt/app/cron.log 2>&1' | crontab
cron start -f

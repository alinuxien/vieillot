FROM bitnami/symfony:1.5.11
COPY . /app/myapp
RUN cd /app/myapp \
 && sed -i 's/APP_ENV=dev/APP_ENV=prod/g' .env \ 
 && sed -i 's/APP_DEBUG=1/APP_DEBUG=0/g' .env \
 && composer update --no-dev || true
 && APP_ENV=prod APP_DEBUG=0 php bin/console cache:clear
EXPOSE 8000


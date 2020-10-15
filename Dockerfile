FROM bitnami/symfony:1.5.11
COPY . /app/myapp
WORKDIR /app/myapp
RUN sed -i 's/APP_ENV=dev/APP_ENV=prod/g' .env \ 
 && sed -i 's/APP_DEBUG=1/APP_DEBUG=0/g' .env
RUN composer update --no-dev || true
RUN APP_ENV=prod APP_DEBUG=0 php bin/console cache:clear
EXPOSE 8000


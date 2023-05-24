FROM public.ecr.aws/awsguru/php:82.2023.3.11.1
COPY --from=public.ecr.aws/awsguru/aws-lambda-adapter:0.7.0 /lambda-adapter /opt/extensions/lambda-adapter

ADD nginx/conf/nginx.conf      /opt/nginx/conf/nginx.conf
ADD php/php.ini                /opt/php/php.ini
ADD php/etc/php-fpm.conf       /opt/php/etc/php-fpm.conf
ADD php/php.d/extensions.ini   /opt/php/php.d/extensions.ini

COPY bootstrap /opt/bootstrap

COPY app /var/task/app
WORKDIR /var/task/app

USER nobody
ENTRYPOINT /opt/bootstrap

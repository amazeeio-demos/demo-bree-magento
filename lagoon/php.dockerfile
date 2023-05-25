ARG CLI_IMAGE
FROM ${CLI_IMAGE} as cli

FROM uselagoon/php-8.1-fpm:latest

# Extras for GD extension.
RUN apk add \
  freetype-dev \
  libpng-dev \
  jpeg-dev \
  libjpeg-turbo-dev

ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/
RUN chmod +x /usr/local/bin/install-php-extensions && \
    install-php-extensions intl ctype curl dom fileinfo gd hash iconv intl json libxml mbstring openssl pcre pdo_mysql sockets

RUN docker-php-ext-configure gd --with-freetype --with-jpeg
RUN docker-php-ext-install gd
RUN docker-php-ext-enable gd

COPY --from=cli /app /app

FROM uselagoon/php-8.1-cli:latest

COPY composer.* /app/
RUN composer self-update --2

ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/
RUN chmod +x /usr/local/bin/install-php-extensions && \
    install-php-extensions intl

# COPY auth.json /app/
# COPY patches /app/patches

COPY . /app
RUN COMPOSER_MEMORY_LIMIT=-1 composer install --no-dev

# Move entrypoints we need into the right place
COPY ./lagoon/99_lagoon_magento_entrypoint.sh /lagoon/entrypoints/


# Ensure there's actually a directory for the symlinks.
RUN mkdir -p -v -m775 /storage/generated && \
    mkdir -p -v -m775 /storage/var && \
    mkdir -p -v -m775 /storage/static && \
    mkdir -p -v -m775 /storage/media && \
    mkdir -p -v -m775 /storage/etc /repo/app/etc

# Here we copy across any of the app/etc files that come in
# into their own special directory
COPY ./app/etc /repo/app/etc

# Remove the files and replace with symlinks
RUN rm -rf /app/var && \
    rm -rf /app/generated && \
    rm -rf /app/pub/static && \
    rm -rf /app/app/etc

RUN ln -s /storage/generated /app/generated && \
    ln -s /storage/var /app/var && \
    ln -s /storage/static /app/pub/static && \
    ln -s /storage/media /app/pub/media && \
    ln -s /storage/etc /app/app/etc

ENV WEBROOT=pub

#!/bin/sh

# in order to fix permissions on /app/app/etc/lagoon-rootless-migration-complete
# if it exists and it's not writeable, we need to recreate it so that it _is_ writeable
# this'll let us actually install Magento (given that we're taking over the app/etc directory)

lrmcf="/app/app/etc/.lagoon-rootless-migration-complete"

if [ -e "$lrmcf" ] && [ ! -w "$lrmcf" ]; then
  rm -f "$lrmcf"
  touch "$lrmcf"
  chmod +w "$lrmcf"
fi



mkdir -p -v -m775 /app/app/etc/storage/generated
mkdir -p -v -m775 /app/app/etc/storage/var
mkdir -p -v -m775 /app/app/etc/storage/static
mkdir -p -v -m775 /app/app/etc/storage/media

mkdir -p -v -m775 /app/pub/media/attribute
mkdir -p -v -m775 /app/pub/media/analytics
mkdir -p -v -m775 /app/pub/media/catalog
mkdir -p -v -m775 /app/pub/media/customer
mkdir -p -v -m775 /app/pub/media/downloadable
mkdir -p -v -m775 /app/pub/media/favicon
mkdir -p -v -m775 /app/pub/media/import
mkdir -p -v -m775 /app/pub/media/logo
mkdir -p -v -m775 /app/pub/media/custom_options
mkdir -p -v -m775 /app/pub/media/theme
mkdir -p -v -m775 /app/pub/media/theme_customization
mkdir -p -v -m775 /app/pub/media/wysiwyg
mkdir -p -v -m775 /app/pub/media/tmp
mkdir -p -v -m775 /app/pub/media/pdf
mkdir -p -v -m775 /app/pub/media/captcha
mkdir -p -v -m775 /app/pub/media/sitemap


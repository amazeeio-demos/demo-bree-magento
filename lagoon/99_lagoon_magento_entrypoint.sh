#!/bin/sh

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
# mkdir -p -v -m775 /app/pub/media/generated
# mkdir -p -v -m775 /app/pub/media/var
# mkdir -p -v -m775 /app/pub/media/static
# mkdir -p -v -m775 /storage/etc

cp -u /repo/app/etc/* /storage/etc

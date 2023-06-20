#!/bin/sh

mkdir -p -v -m775 /storage/media/attribute
mkdir -p -v -m775 /storage/media/analytics
mkdir -p -v -m775 /storage/media/catalog
mkdir -p -v -m775 /storage/media/customer
mkdir -p -v -m775 /storage/media/downloadable
mkdir -p -v -m775 /storage/media/favicon
mkdir -p -v -m775 /storage/media/import
mkdir -p -v -m775 /storage/media/logo
mkdir -p -v -m775 /storage/media/custom_options
mkdir -p -v -m775 /storage/media/theme
mkdir -p -v -m775 /storage/media/theme_customization
mkdir -p -v -m775 /storage/media/wysiwyg
mkdir -p -v -m775 /storage/media/tmp
mkdir -p -v -m775 /storage/media/pdf
mkdir -p -v -m775 /storage/media/captcha
mkdir -p -v -m775 /storage/media/sitemap
mkdir -p -v -m775 /storage/media/generated
mkdir -p -v -m775 /storage/media/var
mkdir -p -v -m775 /storage/media/static

cp -u /repo/app/etc/* /storage/etc

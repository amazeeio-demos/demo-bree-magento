#Lagoon Magento 2 example

Please note that the Magento 2 README can be round at [./PROJECT_README.md](./PROJECT_README.md)

This is a highly experimental Lagoonization of Magento, use at your own risk while it is in active development.

PR's welcome.

# About the volume mounts

As we've had some issues with symlinks in Magento (still under investigation), the simplest approach was to mount all persistent storage under `app/etc/`

This allows for installing Magento on Lagoon's infrastructure, however, we're mounting `app/etc` as a persistent volume, which means that any changes to `app/etc`'s files that aren't generated by Magento itself will need to be manually copied into `app/etc`.

When we build the image from your source code, we're currently copying the contents of the `app/etc` directory to `/repo/app/etc` - this makes the files available to you so that you can, if need, copy changes into the `app/etc` volume.


# Installation

Once you have set up your project on Lagoon (or locally) you will want to run an installation

If you're installing on Lagoon, you'll want to ssh into your target environment and copy the basic files into `/app/app/etc`

`cp /repo/app/etc/* /app/app/etc/`


Installing locally, you'll want to remove the `base-url-secure` argument below.

```
/app/bin/magento setup:install --base-url="${LAGOON_ROUTE:-http://magento.docker.amazee.io}" \
--base-url-secure="${LAGOON_ROUTE:-https://magento.docker.amazee.io}" \
--db-host="${MARIADB_HOST:-mariadb}" \
--db-name="${MARIADB_DATABASE:-lagoon}" \
--db-user="${MARIADB_USERNAME:-lagoon}" \
--db-password="${MARIADB_PASSWORD:-lagoon}" \
--admin-firstname="Admin" \
--admin-lastname="User" \
--admin-email="admin@example.com" \
--admin-user="admin" \
--admin-password="admin123" \
--elasticsearch-host="elasticsearch" \
--elasticsearch-port=9200 \
--use-rewrites=1 \
--search-engine=elasticsearch7

```
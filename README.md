#Lagoon Magento 2 example

Please note that the Magento 2 README can be round at [./PROJECT_README.me](./PROJECT_README.me)

This is a highly experimental Lagoonization of Magento, use at your own risk while it is in active development.

PR's welcome.

# Installation

Once you have set up your project on Lagoon (or locally) you will want to run an installation - This seems to work from inside the container for the moment

```
/app/bin/magento setup:install --base-url="${LAGOON_ROUTE:-http://magento.docker.amazee.io}" \
--db-host="${MARIADB_HOST:-mariadb}" \
--db-name="${MARIADB_DATABASE:-lagoon}" \
--db-user="${MARIADB_USERNAME:-lagoon}" \
--db-password="${MARIADB_PASSWORD:-lagoon}" \
--admin-firstname="Admin" \
--admin-lastname="Admin" \
--admin-email="info@admindomain.com" \
--admin-user="admin" \
--admin-password="Testing123%567" \
--use-rewrites="1" \
--backend-frontname="admin" \
--search-engine="elasticsearch7" \
--elasticsearch-host="elasticsearch"

```

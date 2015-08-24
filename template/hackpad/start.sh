#!/bin/bash

set -e

cd "$( dirname "${BASH_SOURCE[0]}" )"

ADMIN_EMAILS=${ADMIN_EMAILS:-admin@example.com}
DB_HOST=${DB_HOST:-mysql}
DB_PORT=${DB_PORT:-3306}
DB_NAME=${DB_NAME:-hackpad}
DB_USERNAME=${DB_USERNAME:-hackpad}
DB_PASSWORD=${DB_PASSWORD:-password}
TOP_DOMAINS=${TOP_DOMAINS:-localhost,localbox.info}

cp hackpad/etherpad/etc/etherpad.local.properties.tmpl hackpad/etherpad/etc/etherpad.local.properties

sed -i.bak s/__email_addresses_with_admin_access__/$ADMIN_EMAILS/g hackpad/etherpad/etc/etherpad.local.properties
sed -i.bak s/__dbc_dbserver__/$DB_HOST/g hackpad/etherpad/etc/etherpad.local.properties
sed -i.bak s/__dbc_dbport__/$DB_PORT/g hackpad/etherpad/etc/etherpad.local.properties
sed -i.bak s/__dbc_dbname__/$DB_NAME/g hackpad/etherpad/etc/etherpad.local.properties
sed -i.bak s/__dbc_dbuser__/$DB_USERNAME/g hackpad/etherpad/etc/etherpad.local.properties
sed -i.bak s/__dbc_dbpass__/$DB_PASSWORD/g hackpad/etherpad/etc/etherpad.local.properties
sed -i.bak "s/^\(topdomains = \).*$/\1$TOP_DOMAINS/g" hackpad/etherpad/etc/etherpad.local.properties
sed -i.bak "s/^\(devMode = \).*$/\1 true/g" hackpad/etherpad/etc/etherpad.local.properties
sed -i.bak "s/^\(etherpad\.isProduction = \).*$/\1false/g" hackpad/etherpad/etc/etherpad.local.properties
sed -i.bak "s/^\(logDir = \).*$/\1.\/data\/logs/g" hackpad/etherpad/etc/etherpad.local.properties
echo 'verbose = true' >> hackpad/etherpad/etc/etherpad.local.properties

exec hackpad/bin/run.sh

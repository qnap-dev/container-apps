#!/bin/bash

# read mirror.list to link /var/www/package folder
mkdir /var/www/package
for i in `egrep -o 'https?://[^ ]+' /etc/apt/mirror.list`; do
    url=${i/http:\/\//''}
    target='/var/www/package/' 

    IFS='/' read -a distName <<< "$url"
    dest=$target${distName[-1]}
    if [ ! -h $dest ]; then 
        echo "create $dest"
        ln -s /var/spool/apt-mirror/mirror/$url $dest
    fi 
done

sed -i '12s/DocumentRoot \/var\/www\/html/DocumentRoot \/var\/www\/package/' /etc/apache2/sites-enabled/000-default.conf
sed -i '2s/.*/exit 0/' /usr/sbin/policy-rc.d

apt-mirror && apache2ctl -D FOREGROUND

#!/bin/bash

SELECTED=$1

if [ "$SELECTED" = "7.2" ]; then
  update-alternatives --set php /usr/bin/php7.2
  a2dismod php7.1
  a2dismod php5.6
  a2enmod php7.2
  service apache2 restart
	echo "PHP 7.2 ACTIVATED!"
  exit 0
fi

if [ "$SELECTED" = "7.1" ]; then
  update-alternatives --set php /usr/bin/php7.1
  a2dismod php7.2
  a2dismod php5.6
  a2enmod php7.1
  service apache2 restart
	echo "PHP 7.1 ACTIVATED!"
  exit 0
fi

if [ "$SELECTED" = "5.6" ]; then
  update-alternatives --set php /usr/bin/php5.6
  a2dismod php7.2
  a2dismod php7.1
  a2enmod php5.6
  service apache2 restart
	echo "PHP 5.6 ACTIVATED!"
  exit 0
fi

#!/bin/bash


# Make respective folders
mkdir -p ./system/cms/cache
mkdir -p ./system/cms/config
mkdir -p ./addons
mkdir -p ./assets/cache
mkdir -p ./uploads

# Create necessary files
cp ./system/cms/config/database.php.bak ./system/cms/config/database.php
touch ./system/cms/config/config.php
chmod 777 ./system/cms/config/database.php
chown daemon:daemon ./system/cms/config/database.php
chown daemon:daemon ./system/cms/config/config.php

# Apply proper permissions
chmod 777 system/cms/cache
chmod 777 system/cms/config
chmod 777 addons
chmod 777 assets/cache
chmod 777 uploads
chmod 666 system/cms/config/config.php
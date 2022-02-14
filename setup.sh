#!/usr/bin/bash

apt-get update

apt-get install postgresql postgresql-contrib

sudo -u postgres createuser 'mob_db_user'

sudo -u postgres psql -c "ALTER ROLE mob_db_user WITH password 'mob_db_pass'"

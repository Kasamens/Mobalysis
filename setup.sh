#!/usr/bin/bash

apt-get update

apt-get install postgresql postgresql-contrib -y

sudo service postgresql start

apt-get install python3-venv -y

sudo -u postgres createuser 'mob_db_user'

sudo -u postgres psql -c "ALTER ROLE mob_db_user WITH password 'mob_db_pass'"

sudo -u postgres createdb mobalytics

sudo -u postgres psql -c "ALTER DATABASE mobalytics OWNER TO mob_db_user"
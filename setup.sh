#!/usr/bin/bash

apt-get update

apt-get install postgresql -y

useradd mob_db_user -p mob_db_pass

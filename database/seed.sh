#!/bin/bash

chmod +x ./seed.sh
echo $PWD

mysqlimport --ignore-lines=1 --fields-terminated-by=, --local -u root yump_SF database/restaurant.csv

mysqlimport --ignore-lines=1 --fields-terminated-by=, --local -u root yump_SF database/user_info.csv

mysqlimport --ignore-lines=1 --fields-terminated-by=, --local -u root yump_SF database/users_reviews.csv
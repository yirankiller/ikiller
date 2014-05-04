#!/bin/bash
SQL_FILE="query.sql"
NEWEARCHIVE_DB="newearchive"

GENERATEDSQL_DIR="generated_sql"
mkdir $GENERATEDSQL_DIR  2>/dev/null

TEMPFILE=`mktemp --tmpdir=$GENERATEDSQL_DIR --suffix=.sql -t earchive-migration-loanapplication-XXXXXXXXXXXX`


for x in `psql -U postgres -f $SQL_FILE $NEWEARCHIVE_DB --no-align --tuples-only  -F";"`
do


echo $x|awk -F";" '{print "update loanapplication set earchivedocumentid=\x27" $1 "\x27 where refnum=\x27" $2 "\x27;"}'>>$TEMPFILE
##echo $x|awk -F";" '{print "update loanapplication set earchivedocumentid=" $1 " where refnum=\x27" $2 "\x27;"}'>>$TEMPFILE

done


echo "Generated file $TEMPFILE"

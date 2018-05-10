#!/bin/sh

echo $DBURL
echo $DBNAME
echo $SECRETID
echo $BUCKET
echo $KEY
username=`aws secretsmanager  get-secret-value --secret-id ${SECRETID} --query '{SecretString:SecretString}' | jq -r .SecretString | jq '.username'`
password=`aws secretsmanager  get-secret-value --secret-id ${SECRETID} --query '{SecretString:SecretString}' | jq -r .SecretString | jq '.password'`

aws s3 cp s3://$BUCKET/$KEY .

mysql -h ${DBURL} -u ${username} -p${password} ${DBNAME} < $KEY


#!/bin/sh

echo "DB URL $DBURL"
echo "DB NAME $DBNAME"
echo "SECRET ID $SECRETID"
echo "BUCKET $BUCKET"
echo "KEY $KEY"

username=`aws secretsmanager  get-secret-value --secret-id ${SECRETID} --query '{SecretString:SecretString}' | jq -r .SecretString | jq '.username'`
password=`aws secretsmanager  get-secret-value --secret-id ${SECRETID} --query '{SecretString:SecretString}' | jq -r .SecretString | jq '.password'`
tempusername="${username%\"}"
username="${tempusername#\"}"

temppassword="${password%\"}"
password="${temppassword#\"}"

aws s3 cp s3://$BUCKET/$KEY .


mysql -h ${DBURL} -u ${username} -p${password} ${DBNAME} < $KEY


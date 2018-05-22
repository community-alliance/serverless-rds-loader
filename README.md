# Serverless RDS Loader [![CircleCI](https://circleci.com/gh/larse514/serverless-rds-loader.svg?style=svg)](https://circleci.com/gh/larse514/serverless-rds-loader) 

Simple Docker container that will fetch AWS Secret Manager credentials, pull an SQL script from aws S3, and use them to run a data load via the mysql client.

## How to run
RDS Loader uses the following environment variables:
1. DBURL - URL of MYSQL RDS Instance
2. DBNAME - Name of MYSQL DB Name
3. SECRETID - AWS Secret Manager Id
4. BUCKET - AWS S3 Bucket container SQL script
5. KEY - AWS S3 Key name of SQL file in S3 


## running locally
TODO- Add local usage via docker image </br>
remember to use 127.0.0.1 for host when running local </br>
mysql -h 127.0.0.1 -u ${user} -p${PASSWORD} feedmedev < db.sql
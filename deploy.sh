#!/bin/sh

set -e

echo "What is stack name?"
while [ true ] ; do
read stackName
read -s key
if [ $? = 0 ] ; then
echo "sam build"

sam build

echo "sam deploy"
sam deploy --stack-name $stackName --profile default --region us-east-1

exit;
else
echo "waiting for the keypress"
fi
done
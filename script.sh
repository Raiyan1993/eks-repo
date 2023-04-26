#!/bin/bash
while read line
do
instance=$line;
echo $instance;
aws ssm send-command --document-name AWS-RunPatchBaseline --parameters Operation=Install --instance-id $instance --region ap-southeast-1 --cloud-watch-output-config CloudWatchOutputEnabled=true --output text;
done < instances.txt

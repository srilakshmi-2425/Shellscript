#!/bin/bash

##################################

# Author: Srilakshmi	

# Project Name: AWS

# Date: 23-05-24

# Version: v1

# This script will report the AWS resource usage

###################################

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM

set -x

# list s3 buckets

echo "print list of s3 buckets"

aws s3 ls > resourceTracker

# list EC2 Instances

echo "print list of EC2 instances"

aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'


# list AWS lambda 

echo "print list of lambda functions"

aws lambda list-functions >> resourceTracker:q!

# aws IAM users

echo "print list of IAM users"

aws iam list-users

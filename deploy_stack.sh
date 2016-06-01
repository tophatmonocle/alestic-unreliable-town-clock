#!/bin/bash

aws cloudformation update-stack \
  --stack-name "town-clock" \
  --capabilities CAPABILITY_IAM \
  --template-body file://./unreliable-town-clock.template \
  --parameters \
  ParameterKey='ClockPeriod',ParameterValue='60',UsePreviousValue=false \
  ParameterKey='InstallScriptURL',ParameterValue='https://raw.githubusercontent.com/tophatmonocle/alestic-unreliable-town-clock/master/unreliable-town-clock-bootstrap',UsePreviousValue=false \
  ParameterKey='InstanceType',ParameterValue='t2.micro',UsePreviousValue=false \
  ParameterKey='OperatorEmail',ParameterValue='corey@tophat.com',UsePreviousValue=false \
  ParameterKey='SshKeyName',ParameterValue='gateway',UsePreviousValue=false \
  ParameterKey='Support',ParameterValue='',UsePreviousValue=false \
  ParameterKey='VPCZoneId',ParameterValue='subnet-757b6f5d',UsePreviousValue=false \
  ParameterKey='AvailabilityZone',ParameterValue='us-east-1e',UsePreviousValue=false

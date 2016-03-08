#!/usr/bin/env ruby

require 'aws-sdk-v1'

ec2 = AWS::EC2.new(
  :access_key_id => 'SECRET_KEY',
  :secret_access_key => 'ACCESS_KEY')

## web-sg
secgrp = ec2.security_groups.create('web-sg')
secgrp.authorize_ingress(:tcp, 80 )
secgrp.authorize_ingress(:tcp, 443 )
##
## dns-sg
secgrp = ec2.security_groups.create('dns-sg')
secgrp.authorize_ingress(:udp, 53 )
##






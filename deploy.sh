#!/bin/bash

#configuration file path
username='krohn'
source network_dom0.sh
ip_address='192.168.1.102'
app_name="postgresql-12.0.tar.bz2"
test_file="test_suite.sh"
app="feature_dependance"
vm_cfg_path="/etc/xen/myvm.cfg"
vm_name="myvm"

# launch the domU or vm
xl create $vm_cfg_path

sleep 20
#ssh connection with domU

ssh $username@$ip_address  \
"mkdir project"

scp install_postgres.sh $username@$ip_address:/home/krohn/project 
scp $test_file $username@$ip_address:/home/krohn
scp $app $username@$ip_address:/home/krohn
scp $app_name $username@$ip_address:/home/krohn/project
ssh $username@$ip_address  \
"cd project;
source install_postgres.sh" 

#shutdown the domU
xl shutdown $vm_name
sleep 20

source select_features.sh



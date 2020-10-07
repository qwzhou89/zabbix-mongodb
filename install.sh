#!/bin/bash

echo "Copy scripts..."
mkdir -p /etc/zabbix/scripts
curl https://raw.githubusercontent.com/leshak/zabbix-mongodb/master/scripts/zabbix-mongodb-stats.sh -o /etc/zabbix/scripts/zabbix-mongodb-stats.sh
curl https://raw.githubusercontent.com/leshak/zabbix-mongodb/master/scripts/zabbix-mongodb.py -o /etc/zabbix/scripts/zabbix-mongodb.py
chmod 0740 /etc/zabbix/scripts/*
chown -R zabbix. /etc/zabbix/scripts

echo "Copy config..."
curl https://raw.githubusercontent.com/leshak/zabbix-mongodb/master/zabbix_agentd.d/mongodb.conf -o /etc/zabbix/zabbix_agentd.d/mongodb.conf

echo "Restart zabbix agent..."
systemctl restart zabbix-agent
sleep 4

echo "Don't forget to add the template to the Zabbix!"

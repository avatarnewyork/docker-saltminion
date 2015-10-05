#!/bin/bash


echo "master: ${SALTMASTER_PORT_4505_TCP_ADDR}" >> /etc/salt/minion

/usr/bin/salt-minion -d --log-file=/var/log/salt-minion.log --log-file-level=info

tail -f /var/log/salt-minion.log

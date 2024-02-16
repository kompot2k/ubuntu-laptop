#!/bin/bash

touch /etc/cloud/cloud-init.disabled

# uncheck everything except "None"
dpkg-reconfigure cloud-init
apt purge cloud-init
rm -rf /etc/cloud/ && rm -rf /var/lib/cloud/
reboot

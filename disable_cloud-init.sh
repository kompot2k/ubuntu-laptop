#!/bin/bash

touch /etc/cloud/cloud-init.disabled

# uncheck everything except "None"
sudo dpkg-reconfigure cloud-init
apt-get purge cloud-init
rm -rf /etc/cloud/ && rm -rf /var/lib/cloud/
reboot

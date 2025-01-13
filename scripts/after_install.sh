#!/bin/bash
# Start Apache and ensure proper permissions
sudo systemctl start httpd
sudo chown -R apache:apache /var/www/html
sudo chmod -R 755 /var/www/html

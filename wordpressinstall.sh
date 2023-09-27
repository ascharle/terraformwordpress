#!/bin/bash

# Update the system
yum update -y

# Install Apache, PHP, and necessary PHP modules
yum install -y httpd php php-mysqlnd php-fpm

# Start and enable Apache
systemctl start httpd
systemctl enable httpd

# Install MySQL client
yum install -y mysql

# Download and set up WordPress
cd /tmp
wget https://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz
mv wordpress/* /var/www/html/

# Set permissions
chown -R apache:apache /var/www/html/
chmod -R 755 /var/www/html/

# Create a wp-config.php file
cd /var/www/html
cp wp-config-sample.php wp-config.php

# Update wp-config.php with database details
# Note: Replace 'database_name_here', 'username_here', 'password_here', and 'localhost' with your actual RDS details
sed -i 's/database_name_here/terraformwordpress/g' wp-config.php
sed -i 's/username_here/wordpress/g' wp-config.php
sed -i 's/password_here//g' wp-config.php
sed -i 's/localhost/terraformwordpress.cpwadnhndhpd.us-east-1.rds.amazonaws.com/g' wp-config.php

# Restart Apache
systemctl restart httpd

# Clean up
rm -rf /tmp/wordpress /tmp/latest.tar.gz

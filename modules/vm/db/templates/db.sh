#!/bin/bash
echo "Setting up database server..."
sudo apt-get update -y
sudo apt-get install -y mysql-server rsyslog ufw lynis
sudo ufw allow from ${var.web_private_ip} to any port 3306
sudo ufw enable
sudo systemctl enable mysql
sudo systemctl start mysql
echo "Database server setup complete."

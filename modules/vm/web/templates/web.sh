#!/bin/bash
echo "Setting up web server..."
sudo apt-get update -y
sudo apt-get install -y apache2 rsyslog ufw lynis
sudo systemctl enable apache2
sudo systemctl start apache2
echo "Web server setup complete."

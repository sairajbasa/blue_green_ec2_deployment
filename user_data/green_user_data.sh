#!/bin/bash

sudo su
# Green Environment - Additional Features
FEATURE_LEVEL="advanced"

yum install -y httpd
systemctl start httpd
systemctl enable httpd

HTML="/var/www/html/index.html"

echo "<h1>Welcome to Our Application</h1>" > $HTML
echo "<p>Green Environment - Advanced Version</p>" >> $HTML

if [ "$FEATURE_LEVEL" = "advanced" ]; then
  echo "<hr><h2>Dashboard</h2>" >> $HTML
  echo "<button>Download Report</button>" >> $HTML
fi

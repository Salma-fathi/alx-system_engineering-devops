#!/bin/bash

# Step 1: Install Nginx
sudo apt update
sudo apt install nginx -y

# Step 2: Configure custom 404 page
sudo bash -c 'cat > /etc/nginx/sites-available/custom_404' <<EOF
server {
    listen 80 default_server;
    listen [::]:80 default_server;

    root /var/www/html;
    index index.html index.htm;

    server_name _;

    location / {
        try_files \$uri \$uri/ =404;
    }

    error_page 404 /404.html;
    location = /404.html {
        root /usr/share/nginx/html;
        internal;
    }
}
EOF

# Step 3: Create custom 404 page with the required string
sudo bash -c 'echo "Ceci n'est pas une page" | sudo tee /usr/share/nginx/html/404.html'

# Step 4: Create a symbolic link to enable the site
sudo ln -s /etc/nginx/sites-available/custom_404 /etc/nginx/sites-enabled/

# Step 5: Test Nginx configuration
sudo nginx -t

# Step 6: Restart Nginx to apply changes
sudo systemctl restart nginx

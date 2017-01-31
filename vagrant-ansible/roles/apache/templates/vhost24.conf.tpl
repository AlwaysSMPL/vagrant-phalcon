<VirtualHost *:{{apache.serverport}}>
    ServerName {{apache.servername}}
    DocumentRoot {{ apache.docroot }}/public

    <Directory {{ apache.docroot }}/public>
        AllowOverride All
        Options -Indexes +FollowSymLinks
        Require all granted
    </Directory>
</VirtualHost>
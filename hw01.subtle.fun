server {
        listen 80;
        listen [::]:80;

        root /home/liz/www/hw01.subtle.fun;

        index index.html;

        server_name hw01.subtle.fun;

        location / {
                # First attempt to serve request as file, then
                # as directory, then fall back to displaying a 404.
                try_files $uri $uri/ =404;
        }
}

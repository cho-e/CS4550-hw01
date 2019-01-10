server {
        listen 80;
        listen [::]:80;

        root /home/liz/www/subtle.fun;

        index index.html;

        server_name subtle.fun www.subtle.fun;

        location / {
                # First attempt to serve request as file, then
                # as directory, then fall back to displaying a 404.
                try_files $uri $uri/ =404;
        }
}

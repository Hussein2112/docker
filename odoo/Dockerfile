FROM odoo:16.0

#Install necessary packages for SSL support
RUN apt-get update && apt-get install -y \
openssl \
nginx

#Generate SSL certificates
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
-keyout /etc/ssl/private/odoo.key \
-out /etc/ssl/certs/odoo.crt

#Configure nginx to use SSL certificates and proxy requests to odoo
COPY nginx.conf /etc/nginx/sites-enabled/default

#Expose the HTTPS port for nginx
EXPOSE 443

#Set the default command to launch nginx and odoo
CMD ["nginx", "-g", "daemon off;"]

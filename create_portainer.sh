##docker network create --driver bridge odoo-net
#docker run -d -p 8000:8000 -p 9443:9443 --name portainer \
#--restart=always -v /var/run/docker.sock:/var/run/docker.sock \
#--network odoo-net -v portainer_data:/data portainer/portainer-ce:2.9.3
# docker rm $( docker ps -aq --filter "status=exited")
docker run -d -p 8000:8000 -p 9443:9443 --name portainer \
--restart=always -v /var/run/docker.sock:/var/run/docker.sock \
-v portainer_data:/data portainer/portainer-ce:2.9.3

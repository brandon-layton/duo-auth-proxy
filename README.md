# duo-auth-proxy
Duo Authentication Proxy inside a Docker container
## Build Image
You can build this image by using `docker build PATH -t TAGNAME`. If you are planning on pushing this image to a repository make sure to tag it appropriately.
## Run docker-compose.yaml
Make sure that you have docker-compose installed on your system and that docker is running. Use the command `docker-compose up -d` in the same directory as the compose file and use `docker-compose down` to bring down the containers.
## Configuration
The configuration can and should be changed in `./conf/authproxy.cfg`. You need to add your credentials from duo in oreder for it to run correctly. For any configuration help please reference https://duo.com/docs/authproxy-reference#configuration

### Docker Compose Lamp

This repository creates a Docker Compose Environment using MySQL, Apache and PHP5. By default this environment deploys an LAMP Stack. The following source images are used:

* [webunitydesign/docker-compose-apache](https://hub.docker.com/r/webunitydesign/docker-compose-apache/)
* [webunitydesign/docker-compose-mysql](https://hub.docker.com/r/webunitydesign/docker-compose-mysql/)

To use the bundled source images just copy the docker-compose.yml file from this repo and in the same directory run docker-compose up. If you would like to compile your own source images using the Dockerfiles as a template clone the whole repo and make the required changes. Remember to update the composer file and build the images before running

### Other Notes

* The LAMP stack runs on port 80
* The default mysql credentials are ```root``` and ```root```. If you are using this environment for production be sure to change these values
* The hostname for the mysql container from the LAMP stack is lamp-dev-mysql

# GLPI_in_docker
## GLPI ITSM in docker containers

* .app -- folder for GLPI code
* .configs -- config files for nginx & php
* .db -- folder for database
* .log -- folder for logs
* nginx.Dockerfile
* php-fpm.Dockerfile
* docker-compose.yml

You have to download GLPI code from [official site](https://glpi-project.org/downloads/) and put it to .app folder

```
docker-compose up -d
```

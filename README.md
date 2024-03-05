# 42_inception

### Requirements

-   [x] For performance matters, the containers must be built either from the penultimate stable version of Alpine or Debian

-   [ ] You also have to write your own Dockerfiles, one per service.

-   [ ] The Dockerfiles must be called in your docker-compose.yml by your Makefile.

-   [ ] Configure your domain name so it points to your local IP address. This domain name must be kmatos-s.42.fr.

-   [ ] It is mandatory to use environment variables.

-   [ ] Your containers have to restart in case of a crash.

#### Containers

-   [ ] A Docker container that contains NGINX with TLSv1.2 or TLSv1.3 only.

    -   [ ] Your NGINX container must be the only entrypoint into your infrastructure via the port 443 only, using the TLSv1.2 or TLSv1.3 protocol.

-   [ ] A Docker container that contains WordPress + php-fpm (it must be installed and configured) only without nginx

    -   [ ] There must be two users, one of them being the administrator. The administrator’s username can’t contain admin/Admin or administrator/Administrator (e.g., admin, administrator, Administrator, admin-123, and
            so forth).

-   [ ] A Docker container that contains MariaDB only without nginx.

#### Volumes

-   [ ] Your volumes will be available in the /home/kmatos-s/data folder of the host machine using Docker.

-   [ ] A volume that contains your WordPress database.

-   [ ] A second volume that contains your WordPress website files.

#### Network

-   [ ] A docker-network that establishes the connection between your containers.

# Docker Based Web Development Environment

A basic deployable web development environment with PHP, MySQL, phpMyAdmin, Redis, and Nginx.

### Usage

To start the containers:<br>
`docker-compose up [-d]`

To stop the containers:<br>
`docker-compose down [-v]`

### PHP
Version: 7.4.11

#### Additional Installed Extensions
Extensions that have been installed on top of the core PHP extensions.
- PDO
- Opcache
- Exif
- pcntl
- bcmath
- gd
- zip
- Redis (5.3.1)
- Memcache (3.1.5)
- mcrypt (1.0.3)
- Xdebug

#### Configuration
To modify the PHP configuration, config values can be modified in the `php/conf.d/custom.ini` file.

### MySQL
Version: 5.7.22<br>

#### Access Information
Root Password: password<br>
Host: mysql<br>
Port: 3306<br>

### phpMyAdmin
Version: 5.1.1<br>

#### Access Information
URL: https://localhost/phpmyadmin

### Additional Information:

#### Certbot with Nginx and Docker Compose
https://pentacent.medium.com/nginx-and-lets-encrypt-with-docker-in-less-than-5-minutes-b4b8a60d3a71
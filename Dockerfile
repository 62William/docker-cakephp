FROM tutum/lamp:latest
MAINTAINER Matt Kaufman <matt@62william.com>

# Download latest version of CakePHP into /app
RUN rm -fr /app && git clone -b 2.8 https://github.com/cakephp/cakephp /app

# Configure Wordpress to connect to local DB
ADD database.php /app/app/Config/database.php

# Modify permissions to allow plugin upload
RUN chmod -R 777 /app/app/tmp

# Add database setup script
ADD create_mysql_admin_user.sh /create_mysql_admin_user.sh
RUN chmod 755 /*.sh

EXPOSE 80 3306
CMD ["/run.sh"]

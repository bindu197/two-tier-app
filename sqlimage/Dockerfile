FROM mysql
ENV MYSQL_ROOT_PASSWORD root
ENV MYSQL_DATABASE testdb
ENV MYSQL_USER admin
ENV MYSQL_PASSWORD admin
COPY init.sql /docker-entrypoint-initdb.d/
EXPOSE 3306

FROM mysql:5.7
#ENV MYSQL_ALLOW_EMPTY_PASSWORD yes

#COPY setup.sh /mysql/setup.sh
#COPY schema.sql /mysql/schema.sql
#VOLUME  ["/etc/mysql", "/var/lib/mysql"]

EXPOSE 8080
#CMD ["sh", "/mysql/setup.sh"]

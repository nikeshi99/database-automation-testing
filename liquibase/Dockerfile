FROM liquibase/liquibase
ENV URL=jdbc:mysql://35.244.39.57:3306/DBdev
ENV USERNAME=nikeshi
ENV PASSWORD=Wso2@123
ENV CHANGELOGFILE=database-automation-testing/Liquibase/db/master.mysql.xml
CMD ["sh", "-c", "docker-entrypoint.sh --url=${URL} --username=${USERNAME} --password=${PASSWORD} --driver:com.mysql.cj.jdbc.Driver --classpath=/liquibase/changelog/lib/mysql-connector-java-8.0.29.jar --changeLogFile=${CHANGELOGFILE} update"]
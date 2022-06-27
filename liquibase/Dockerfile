FROM liquibase/liquibase:4.11.0
WORKDIR /liquibase
USER root
# ENV URL=jdbc:mysql://35.244.39.57:3306/DBdev
# ENV USERNAME=nikeshi
# ENV PASSWORD=Wso2@123
COPY lib/mysql-connector-java-8.0.29.jar /liquibase
ENV DRIVER=com.mysql.cj.jdbc.Driver
ENV CLASSPATH=liquibase/mysql-connector-java-8.0.29.jar
#ENV LIQUIBASE_CLASSPATH=${LIQUIBASE_CLASSPATH:-lib/mysql-connector-java-8.0.29.jar}\ LIQUIBASE_DRIVER=${LIQUIBASE_DRIVER:-com.mysql.cj.jdbc.Driver}\

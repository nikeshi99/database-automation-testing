FROM liquibase/liquibase:4.11.0
USER root
WORKDIR /dbAutomation
COPY lib/mysql-connector-java-8.0.29.jar /dbAutomation
ENV LIQUIBASE_DRIVER=com.mysql.cj.jdbc.Driver
ENV LIQUIBASE_CLASSPATH=/dbAutomation/mysql-connector-java-8.0.29.jar
# ENTRYPOINT [ "liquibase","--driver=${driver}","--classpath=${classpath}",""]

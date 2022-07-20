FROM liquibase/liquibase:4.11.0
USER root
WORKDIR /dbAutomation
COPY lib/mysql-connector-java-8.0.29.jar /dbAutomation
ENV DRIVER=com.mysql.cj.jdbc.Driver
ENV CLASSPATH=/dbAutomation/mysql-connector-java-8.0.29.jar
RUN apt update && apt install telnet
# ENTRYPOINT [ "liquibase","--driver=${driver}","--classpath=${classpath}",""]

FROM liquibase/liquibase:4.11.0
USER root
WORKDIR /dbAutomation
RUN apt-get -y update && apt-get -y install telnet
ENTRYPOINT ["/usr/bin/telnet"]
COPY lib/mysql-connector-java-8.0.29.jar /dbAutomation
ENV DRIVER=com.mysql.cj.jdbc.Driver
ENV CLASSPATH=/dbAutomation/mysql-connector-java-8.0.29.jar
# ENTRYPOINT [ "liquibase","--driver=${driver}","--classpath=${classpath}",""]

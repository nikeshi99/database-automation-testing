FROM liquibase/liquibase:4.11.0
WORKDIR /dbAutomation
USER root
COPY lib/mysql-connector-java-8.0.29.jar /dbAutomation
ENV driver=com.mysql.cj.jdbc.Driver
ENV classpath=/dbAutomation/mysql-connector-java-8.0.29.jar
CMD ["--driver=${driver}","--classpath=${classpath}"]
FROM docker:19.03.1

# Install Python3.7, pip3, jq, awscli
RUN apk add --no-cache python3 py3-pip jq
RUN pip3 install --upgrade pip
RUN pip3 install awscli
RUN rm -rf /var/cache/apk/*

# Check version
RUN python3 --version
RUN pip3 --version
RUN aws --version

# Install Java
RUN apk --no-cache add openjdk11 --repository=http://dl-cdn.alpinelinux.org/alpi                                                                             ne/edge/community
RUN apk update

# Check version
RUN java --version

# Download Liquibase and Postgresql Driver
RUN INIT_PATH=`pwd`
RUN apk add bash
RUN mkdir /liquibase
RUN mkdir /Downloads
RUN cd /Downloads
RUN wget "https://github.com/liquibase/liquibase/releases/download/liquibase-par                                                                             ent-3.7.0/liquibase-3.7.0-bin.zip"
RUN wget "https://repo1.maven.org/maven2/org/postgresql/postgresql/42.2.8/postgr                                                                             esql-42.2.8.jar"
RUN unzip liquibase-3.7.0-bin.zip -d /liquibase -q
RUN mv postgresql-42.2.8.jar /liquibase/lib/
RUN export PATH=$PATH:/liquibase

# Command to run within the container
CMD systemctl start docker
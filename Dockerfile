FROM boxfuse/flyway

COPY V1__Initial.sql /flyway/sql

WORKDIR /flyway/drivers

RUN wget https://repo1.maven.org/maven2/mysql/mysql-connector-java/8.0.11/mysql-connector-java-8.0.11.jar

ENTRYPOINT [ "/bin/sh", "-c" , "/bin/sleep 20 && flyway -user=${USER} -password=${PASSWORD} -url=${DSN} info" ]
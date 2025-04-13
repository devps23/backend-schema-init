# backend-schema-init


[//]: # ()
[//]: # (WORKDIR      /tmp)

[//]: # (ADD          https://roboshop-artifacts.s3.amazonaws.com/catalogue.zip  /tmp/catalogue.zip)

[//]: # (RUN          unzip /tmp/catalogue.zip)

[//]: # (RUN          mkdir -p app)

[//]: # (WORKDIR      /app)

[//]: # (RUN          mv /tmp/* /app/ && rm -rf /tmp/*)

[//]: # (COPY         run.sh /)

# yum install -y https://dev.mysql.com/get/mysql80-community-release-el8-1.noarch.rpm
# yum install -y mysql-server
# mysql --version
# mysql_secure_installation --set-${RDS_DB_USER}-pass ${RDS_DB_PASSWORD}
# by default there is a default username and password ,so to override the default credentials with customized credentials


[//]: # ()
[//]: # (#cat /data/secrets.txt)

[//]: # (#echo)

[//]: # (#echo)

[//]: # (#echo)

[//]: # (#env)

[//]: # (# git clone https://github.com/devps23/${project_name}-${component})

[//]: # (#  cd ${project_name}-${component})

[//]: # (#if [ "${db_type}" == "mongodb" ]; then)

[//]: # (#  echo ${project_name}-${component})

[//]: # (#  curl -L -o https://truststore.pki.rds.amazonaws.com/global/global-bundle.pem /app/global-bundle.pem)

[//]: # (#   mongosh docdb.cluster-cvkemucwmc9p.us-east-1.docdb.amazonaws.com:27017 --tls --tlsCAFile global-bundle.pem --retryWrites=false --username docdb --password roboshop12345 </app/schema/catalogue.sql)

[//]: # (#fi)
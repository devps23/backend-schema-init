FROM         docker.io/redhat/ubi8
COPY         mongo.repo  /etc/yum.repos.d/mongodb-org.repo
RUN          yum update
RUN          yum install unzip  mongodb-mongosh  -y
RUN          mkdir -p app
WORKDIR      app
ADD          /app/catalogue.zip https://roboshop-artifacts.s3.amazonaws.com/catalogue.zip
COPY         run.sh /
ENTRYPOINT   ["bash","/run.sh"]

FROM         docker.io/redhat/ubi8
COPY         mongo.repo  /etc/yum.repos.d/mongodb-org.repo
RUN          yum install unzip wget mongodb-mongosh  -y
WORKDIR      /tmp
ADD          https://roboshop-artifacts.s3.amazonaws.com/catalogue.zip  /tmp/catalogue.zip
RUN          unzip /tmp/catalogue.zip
RUN          mkdir -p app
WORKDIR      /app
RUN          mv /tmp/* /app/ && rm -rf /tmp/*
COPY         run.sh /
ENTRYPOINT   ["bash","/run.sh"]

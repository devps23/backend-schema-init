FROM         docker.io/redhat/ubi8
COPY         mongo.repo  /etc/yum.repos.d/mongodb-org.repo
RUN          yum install wget mongodb-mongosh  -y
COPY         run.sh /
ENTRYPOINT   ["bash","/run.sh"]

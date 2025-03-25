FROM         docker.io/redhat/ubi8
COPY         mongo.repo  /etc/yum.repos.d/mongodb-org.repo
RUN          yum install wget mongodb-mongosh  -y
COPY         run.sh /
ENTRYPOINT   ["bash","/run.sh"]



# yum install -y https://dev.mysql.com/get/mysql80-community-release-el8-1.noarch.rpm
# yum install -y mysql-server
# mysql --version


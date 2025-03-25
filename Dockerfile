FROM         docker.io/redhat/ubi8
COPY          mongo.repo /etc/yum.repos.d/mongo.repo
RUN          yum install wget git  mongodb-org-shell  -y
COPY         run.sh /
ENTRYPOINT   ["bash","/run.sh"]




# yum install -y https://dev.mysql.com/get/mysql80-community-release-el8-1.noarch.rpm
# yum install -y mysql-server
# mysql --version


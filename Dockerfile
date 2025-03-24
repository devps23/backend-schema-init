# FROM          redhat/ubi8
# ADD           mongo.repo /etc/yum.repos.d/mongo.repo
# RUN           curl -L -O https://cdn.mysql.com/archives/mysql-8.3/mysql-8.3.0-1.el8.x86_64.rpm-bundle.tar && tar -xf mysql-8.3.0-1.el8.x86_64.rpm-bundle.tar
# RUN           dnf install mysql-community-client-8.3.0-1.el8.x86_64.rpm mysql-community-client-plugins-8.3.0-1.el8.x86_64.rpm mysql-community-libs-8.3.0-1.el8.x86_64.rpm  mysql-community-common-8.3.0-1.el8.x86_64.rpm  git mongodb-org-shell -y
# RUN           rm -f *.tar *.rpm
# COPY          run.sh /
# ENTRYPOINT    ["bash", "/run.sh"]


FROM        docker.io/node:16 As builder
RUN         apt-get update && \
            apt-get install -y wget gnupg unzip && \
            wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | apt-key add -
COPY        mongo.repo  /etc/apt/sources.list.d/mongodb-org-6.0.list
RUN         apt-get update && \
            apt-get install -y mongodb-mongosh && \
            apt-get clean && \
            rm -rf /var/lib/apt/lists/*
COPY        run.sh /
ENTRYPOINT  ["bash", "/run.sh"]
# backend-schema-init


[//]: # ()
[//]: # (WORKDIR      /tmp)

[//]: # (ADD          https://roboshop-artifacts.s3.amazonaws.com/catalogue.zip  /tmp/catalogue.zip)

[//]: # (RUN          unzip /tmp/catalogue.zip)

[//]: # (RUN          mkdir -p app)

[//]: # (WORKDIR      /app)

[//]: # (RUN          mv /tmp/* /app/ && rm -rf /tmp/*)

[//]: # (COPY         run.sh /)
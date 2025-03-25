source /data/secrets.txt
cat /data/secrets.txt
echo
echo
echo
env
git clone https://github.com/devps23/${project_name}-${component}
cd ${project_name}-${component}
 echo ${project_name}-${component}
if [ ${db_type} == "mongodb" ]; then
#   curl -L -O /app/rds-combined-ca-bundle.pem https://truststore.pki.rds.amazonaws.com/global/global-bundle.pem
    wget https://truststore.pki.rds.amazonaws.com/global/global-bundle.pem
    mongosh docdb.cluster-cvkemucwmc9p.us-east-1.docdb.amazonaws.com:27017 --tls --tlsCAFile global-bundle.pem --retryWrites=false --username ${docdb_username} --password ${docdb_password} </schema/catalogue.js
fi
if [ ${db_type} == "mysql" ]; then
    if [ -z "${DB_HOST}" ]; then
        echo "DB_HOST not exists"
        exit 1
      fi
      if [ -z "${RDS_DB_USER}" ]; then
        echo "RDS_DB_USER not exists"
        exit 1
      fi
      if [ -z "${RDS_DB_PASSWORD}" ]; then
        echo "RDS_DB_PASSWORD not exists"
        exit 1
      fi
      if [ -z "${component}" ]; then
        echo "component not exists"
        exit 1
      fi
      if [ -z "${project_name}" ]; then
        echo "project_name not exists"
        exit 1
      fi
  mysql -h${DB_HOST} -u${RDS_DB_USER} -p${RDS_DB_PASSWORD} <schema/backend.sql
  echo mysql -h${DB_HOST} -u${RDS_DB_USER} -p${RDS_DB_PASSWORD} <schema/backend.sql
fi





#cat /data/secrets.txt
#echo
#echo
#echo
#env
# git clone https://github.com/devps23/${project_name}-${component}
#  cd ${project_name}-${component}
#if [ "${db_type}" == "mongodb" ]; then
#  echo ${project_name}-${component}
#  curl -L -o https://truststore.pki.rds.amazonaws.com/global/global-bundle.pem /app/global-bundle.pem
#   mongosh docdb.cluster-cvkemucwmc9p.us-east-1.docdb.amazonaws.com:27017 --tls --tlsCAFile global-bundle.pem --retryWrites=false --username docdb --password roboshop12345 </app/schema/catalogue.sql
#fi




source /data/secrets.txt
cat /data/secrets.txt

if [ -z "$RDS_DB_HOST" ]; then
  echo "RDS_DB_HOST not exists"
  exit 1
fi
if [ -z "$RDS_DB_USER" ]; then
  echo "RDS_DB_USER not exists"
  exit 1
fi
if [ -z "$RDS_DB_PASSWORD" ]; then
  echo "RDS_DB_PASSWORD not exists"
  exit 1
fi
if [ -z "$component" ]; then
  echo "component not exists"
  exit 1
fi
if [ -z "$project_name" ]; then
  echo "project_name not exists"
  exit 1
fi

git clone https://github.com/devps23/${project_name}-${component}
cd ${project_name}-$component

mysql -h rds-dev.cvkemucwmc9p.us-east-1.rds.amazonaws.com -umyadmin -pExpenseApp123<schema/backend.sql


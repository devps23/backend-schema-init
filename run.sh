source /data/secrets.txt
cat /data/secrets.txt

if [ -z "$RDS_DB_HOST" ]; then
  echo "RDS_DB_HOST not exists"
  exit 1
fi
if[ -z "$RDS_DB_USERNAME" ]; then
  echo "RDS_USERNAME not exists"
fi
if[ -z "$RDS_DB_PASSWORD" ]; then
  echo "RDS_PASSWORD not exists"
fi
if[ -z "$component" ]; then
  echo "component not exists"
fi
if[ -z "$project_name" ]; then
  echo "project_name not exists"
fi

git clone https://github.com/devps23/{{project_name}}-{{component}}.git
cd {{projectname}}-{{component}}
mysql -h {{RDS_DB_HOST}} -u{{RDS_USERNAME}} -p{{RDS_PASSWORD}} < schema/{{component}}.sql


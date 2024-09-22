curDir=${pwd}
cd dirname $0
docker compose down -v
cd $curDir

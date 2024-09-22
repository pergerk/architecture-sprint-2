curDir=${pwd}
cd dirname $0
docker compose -f mongo_shard.yaml  down -v
cd $curDir

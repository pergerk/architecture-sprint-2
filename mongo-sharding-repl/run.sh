curDir=${pwd}
cd $(dirname $0)

docker compose up -d

sleep 5

docker compose exec configSrv sh -c "/scripts/init-configsrv.sh"
docker compose exec shard1-a sh -c "/scripts/init-shard1.sh"
docker compose exec shard2-a sh -c "/scripts/init-shard2.sh"
sleep 2

docker compose exec mongos_router sh -c "/scripts/init-router.sh"
echo init router
sleep 1
docker compose exec mongos_router sh -c "/scripts/init-collection.sh"
echo init collection
sleep 1
docker compose exec mongos_router sh -c "/scripts/init-index.sh"
echo init index
sleep 1
docker compose exec mongos_router sh -c "/scripts/init-sharing.sh"
echo init sharing
sleep 1
docker compose exec mongos_router sh  -c "/scripts/init-data.sh"
echo init data

cd $curDir

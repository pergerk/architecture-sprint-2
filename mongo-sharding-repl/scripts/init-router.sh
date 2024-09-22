#!/bin/sh

mongosh  <<EOF
sh.addShard("shard1/shard1-a:27017");
sh.addShard("shard1/shard1-b:27017");
sh.addShard("shard2/shard2-a:27017");
sh.addShard("shard2/shard2-b:27017");
exit();
EOF

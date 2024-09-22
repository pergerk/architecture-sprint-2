#!/bin/sh
mongosh <<EOF
rs.initiate(
    {
      _id : "shard1",
      members: [
        { _id : 0, host : "shard1-a:27017" },
        { _id : 1, host : "shard1-b:27017" }
      ]
    }
);
exit();
EOF

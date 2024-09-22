#!/bin/sh

mongosh  <<EOF
rs.initiate(
    {
      _id : "shard2",
      members: [
        { _id : 0, host : "shard2-a:27017" },
        { _id : 1, host : "shard2-b:27017" }
      ]
    }
  );
exit();
EOF

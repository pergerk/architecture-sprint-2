#!/bin/sh

mongosh <<EOF
rs.initiate(
    {
      _id : "config_server",
      configsvr: true,
      members: [
        { _id : 0, host : "configSrv:27017" }
      ]
    }
  );
exit();
EOF

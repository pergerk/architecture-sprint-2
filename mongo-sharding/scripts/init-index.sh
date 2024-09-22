#!/bin/sh

mongosh --port 27020 <<EOF
use somedb;
db.helloDoc.ensureIndex({name: "hashed"});
exit();
EOF


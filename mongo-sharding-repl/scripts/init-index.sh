#!/bin/sh

mongosh <<EOF
use somedb;
db.helloDoc.ensureIndex({name: "hashed"});
exit();
EOF


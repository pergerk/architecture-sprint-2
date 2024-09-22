#!/bin/sh

mongosh --port 27020 <<EOF
use somedb;
db.createCollection('helloDoc');
exit();
EOF

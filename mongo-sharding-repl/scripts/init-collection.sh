#!/bin/sh

mongosh <<EOF
use somedb;
db.createCollection('helloDoc');
exit();
EOF

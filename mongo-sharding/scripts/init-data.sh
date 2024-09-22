#!/bin/sh

mongosh --port 27020 <<EOF
use somedb;
for(var i = 0; i < 1000; i++) db.helloDoc.insert({age:i, name:"ly"+i})
exit();
EOF

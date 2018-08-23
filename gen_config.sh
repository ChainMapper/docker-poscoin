#!/bin/bash

cat  << EOF
rpcuser=$USER
rpcpassword=$PASSWORD
rpcallowip=$RPCALLOW
rpcport=6666
listen=1
server=1
rpcport=8332
EOF

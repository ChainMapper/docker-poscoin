#!/bin/bash

cat  << EOF
rpcuser=$USER
rpcpassword=$PASSWORD
rpcallowip=$RPCALLOW
rpcport=6666
listen=1
server=1
rpcport=8332
addnode=183.181.170.112:21033
addnode=180.144.189.193:21033
addnode=187.22.111.114:21033
addnode=97.118.204.95:21033
addnode=14.244.255.154:21033
EOF

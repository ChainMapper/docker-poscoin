#!/bin/bash
echo "Docker Pos Coin wallet

By: Jos Hendriks
GitHub: https://github.com/joshendriks/
Docker: https://hub.docker.com/r/joshendriks/ 

BTC: 1NCZgpMMoNwL6ZeFsEQ2kRZEzzzTd5TuGk
POS: PM9E991KfrMZBp976JVFVFax4zs88vVGYp"

config="/config/pos.conf"
if [ -f "$config" ]
then
    echo "Using $config"
    cp $config /data/.pos/pos.conf
fi

wallet="/config/wallet.dat"
if [ -f "$wallet" ]
then
    echo "Using $wallet"
    cp $wallet /data/.valencia/wallet.dat
fi

echo "Starting POS daemon..."
posd

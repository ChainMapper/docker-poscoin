# docker-poscoin
Wallet and daemon for Pos Coin [POS] cryptocurrency on docker

# Quickstart
Type `docker run -it joshendriks/poscoin` and see the wallet starting.

```
Docker Pos Coin wallet

By: Jos Hendriks
GitHub: https://github.com/joshendriks/
Docker: https://hub.docker.com/r/joshendriks/

BTC: 1NCZgpMMoNwL6ZeFsEQ2kRZEzzzTd5TuGk
POS: PM9E991KfrMZBp976JVFVFax4zs88vVGYp

Starting POS daemon...
```

# Proper start
Use a volume to store all data. The image stores it's data in `/data`. So mapping that volume will do the trick.

Additionally you can override the config and wallet file using volumes pointing to `/config/poscoin.conf` and `/config/wallet.data`

# Donations:
BTC: 1NCZgpMMoNwL6ZeFsEQ2kRZEzzzTd5TuGk

POS: PM9E991KfrMZBp976JVFVFax4zs88vVGYp

# License
MIT, see LICENSE file
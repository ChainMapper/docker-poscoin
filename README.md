# docker-poscoin
Wallet and daemon for Pos Coin [POS] cryptocurrency on docker

# Quickstart
Type `docker run -it -e "USER=me" -e "PASSWORD=secret" -e "RPCALLOW=127.0.0.1" chainmapper/poscoin` and see the wallet starting.

Alternatively type `docker run -it -v "<path_to_config>:/config/PayCon.conf" chainmapper/poscoin` to use your own config.

```
Docker POS wallet

By: ChainMapper
Website: https://chainmapper.com

Starting POS daemon...
```

# Proper start
Use a volume to store all data. The image stores it's data in `/data`. So mapping that volume will do the trick.

Additionally you can override the config and wallet file using volumes pointing to `/config/pos.conf` and `/config/wallet.data`

# License
MIT, see LICENSE file
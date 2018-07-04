FROM ubuntu:xenial

RUN apt-get update \
    && apt-get -y upgrade \
	&& apt-get -y install build-essential libssl-dev libdb-dev libdb++-dev libboost-all-dev git libssl1.0.0-dbg \
	&& apt-get -y install libdb-dev libdb++-dev libboost-all-dev libminiupnpc-dev libminiupnpc-dev libevent-dev libcrypto++-dev libgmp3-dev
	
ENV GIT_COIN_URL    https://github.com/posdevv/pos.git
ENV GIT_COIN_NAME   pos   

RUN	git clone $GIT_COIN_URL $GIT_COIN_NAME \
	&& cd $GIT_COIN_NAME \
	&& chmod +x share/genbuild.sh \
	&& chmod +x src/leveldb/build_detect_platform \
	&& cd src \
	&& mkdir obj \
	&& mkdir obj/support \
	&& mkdir obj/crypto \
	&& mkdir obj/zerocoin \
	&& make -f	makefile.unix RELEASE=1\
	&& cp posd /usr/local/bin \
	&& cd / && rm -rf /$GIT_COIN_NAME \
	&& mkdir /data \
	&& mkdir /data/.pos
	
#Add a config so you can run without providing a bitnodes.conf through a volume
COPY pos.conf /data/.pos/pos.conf

#rpc and p2p port
EXPOSE 8332 8333

ENV HOME /data

COPY start.sh /start.sh
RUN chmod 777 /start.sh
CMD /start.sh
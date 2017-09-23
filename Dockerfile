FROM ubuntu:xenial
MAINTAINER oliver@weichhold.com

RUN apt-get update -y && apt-get --no-install-recommends install wget curl software-properties-common -y && \
    wget -O - http://llvm.org/apt/llvm-snapshot.gpg.key | apt-key add - && \
    add-apt-repository "deb http://llvm.org/apt/xenial/ llvm-toolchain-xenial-4.0 main" && \
    add-apt-repository -y ppa:ethereum/ethereum && add-apt-repository -y ppa:ethereum/ethereum-dev && \
    apt-get update -y && \
    apt-get install -y --no-install-recommends ethereum && \
    rm -rf /usr/share/man/* /usr/share/groff/* /usr/share/info/* /var/cache/man/* /tmp/* /var/lib/apt/lists/*

EXPOSE 8545

ADD rootfs /

WORKDIR /tmp
ENTRYPOINT /usr/bin/geth --testnet --rpc --rpcaddr "0.0.0.0" --rpcport "8545" --rpccorsdomain "*" --fast --cache=512 \
--unlock "0x0942e9144606ad43f2e61a7ee332fe9914424712" --password /data/pw.txt --datadir "/data" --rpcapi "db,eth,net,web3,admin,personal"


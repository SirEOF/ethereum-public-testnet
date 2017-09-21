## Ethereum single-node public testnet

- RPC Port 16001, Username: user, Password: pass

### Addresses

- Pool: 0x0942e9144606ad43f2e61a7ee332fe9914424712

### To run this image with internal ports exposed at host:

```bash
docker run -it -d -p 8545:8545 coinfoundry/ethereum-public-testnet
```

### Generating blocks:

```bash
docker exec -i -t <container_id> /usr/bin/bitcoin-cli -datadir=/data/node-pool generate 1
```

### Example RPC against Node-Pool:

```bash
curl --user user:pass --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getinfo", "params": [] }' -H 'content-type: application/json;' http://127.0.0.1:16001/
```

# enode://6039b6518cd7d311587159742f3300c9f9a03947b5fa18e9b4837f6a27e5460c9e1c8bf79e04c00461ffc7e70fa833d048e0e6ee5cf35c913a8e480ee4cfe760@[::]:30304?discport=0

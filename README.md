## Ethereum public testnet

- RPC Port 8545

### To run this image with internal ports exposed at host:

```bash
docker run -it -d -p 8545:8545 coinfoundry/ethereum-public-testnet
```

### Pre-configured accounts

Address: 0x0942e9144606ad43f2e61a7ee332fe9914424712
Password: no password

Address: 0xc18108c7854760005f61a132db356d41e4974f8e
Password: no password

### Attach to geth console

```bash
docker exec -i -t container_id geth attach /data/geth.ipc
```

### Example RPC:

```bash
curl --data-binary '{"jsonrpc": "2.0", "id":"1", "method": "net_peerCount", "params": [] }' -H 'content-type: application/json' -X POST http://127.0.0.1:8545
```

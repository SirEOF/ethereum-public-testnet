## Ethereum two-node public testnet

- RPC Port 16001, Username: user, Password: pass

### Addresses

- Node 1: 0x0942e9144606ad43f2e61a7ee332fe9914424712
- Node 2: 0xe6145260489fec69a32b1fb1588ec1fb835c5681

### To run this image with internal ports exposed at host:

```bash
docker run -it -d -p 8545:8545 -p 8546:8546 coinfoundry/ethereum-public-testnet
```

### Example RPC Node 1:

```bash
curl --data-binary '{"jsonrpc": "2.0", "id":"1", "method": "net_peerCount", "params": [] }' -H 'content-type: application/json' -X POST http://127.0.0.1:8545
```

### Example RPC Node 2:

```bash
curl --data-binary '{"jsonrpc": "2.0", "id":"1", "method": "net_peerCount", "params": [] }' -H 'content-type: application/json' -X POST http://127.0.0.1:8546
```

# hl-indy-pool
Hyperledger Indy Node Pool

Before the HL Indy Pool is started the "local-genesis.txn" must be adjusted. To do this, replace the LAN IP address of the Docker host system in the Genesis file. The file server should not be accessed via the local host URL path, but with the IP of the Docker host system.

Modifications
- Genesis file
- Genesis File URL with the external IP (e.g. 192.168.0.20)

## Makefile

```python
# Starting HL Node Pole
make up

# Stopping HL Node Pole
make down
```
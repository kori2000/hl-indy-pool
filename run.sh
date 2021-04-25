#!/bin/bash
clear

echo ""
echo " * * * Setup Hyperledger Indy Node Pool * * * "
echo ""

echo " ---> Creating Node Contaier..."
docker-compose build >> log.txt
echo ""

echo " ---> Starting [4] Nodes..."
docker-compose up -d >> log.txt
echo ""

echo " ---> Create Wallet and connect to the Ledger. Set Transaction Author Agreement..."
docker exec nodes indy-cli-setup >> log.txt
echo "      Done."
echo ""

echo " ---> Add new DID and Verkey from Seed..."
docker exec nodes add-did-from-seed 000000000000000000000000Trustee9 >> log.txt
echo "      Done."
echo ""

echo " -------------------+-----------------------------------------------"
echo "  Node Pool IP      | 192.168.178.10"
echo "  Local Genesis     | 192.168.178.10"
echo " -------------------+-----------------------------------------------"
echo "  TRUST ANCHOR Seed | 000000000000000000000000Trustee1"
echo " -------------------+-----------------------------------------------"
echo "  Genesis URL       | http://192.168.178.10:4200/local-genesis.txn"
echo ""
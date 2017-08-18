tar -xvf /etc/fabric_crypto/peer0.org1.tar -C $FABRIC_CFG_PATH/
chown -R root.root $FABRIC_CFG_PATH/
rm -f /etc/hyperledger/fabric/msp/config.yaml
sleep 3
peer node start
sleep 400

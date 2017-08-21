tar -xvf /etc/fabric_crypto/$CORE_PEER_ID.tar -C $FABRIC_CFG_PATH/
chown -R root.root $FABRIC_CFG_PATH/
rm -f /etc/hyperledger/fabric/msp/config.yaml
sleep 3
peer node start
sleep 400

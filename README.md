# Separete_nodes
How to start Hyperledger on separate nodes,
1) ./byfn.sh -m generate
  It will generate all nesessary certificates. Put them to appropriate nodes. (for example using scp)
2) Modify scripts/script.sh with proper Hosts and ports
3) While local DNS is not conigured, /etc/hosts must be modified.
4) Start nodes in such order (It's important).

I   CHANNEL_NAME=mychannel TIMEOUT=10000 sudo docker-compose -f fabric-docker_second_node.yaml up -d
II  CHANNEL_NAME=mychannel TIMEOUT=10000 sudo docker-compose -f fabric-docker_third_node.yaml up -d
III CHANNEL_NAME=mychannel TIMEOUT=10000 sudo docker-compose -f fabric-docker_fourth_node.yaml up -d
IV  CHANNEL_NAME=mychannel TIMEOUT=10000 sudo docker-compose -f fabric-docker_main_node.yaml up -d


docker pull hyperledger/fabric-orderer:x86_64-1.0.0-rc1 &&
docker pull hyperledger/fabric-peer:x86_64-1.0.0 &&
docker pull hyperledger/fabric-tools:x86_64-1.0.0 &&
docker tag hyperledger/fabric-orderer:x86_64-1.0.0-rc1 hyperledger/fabric-orderer:latest &&
docker tag hyperledger/fabric-peer:x86_64-1.0.0 hyperledger/fabric-peer:latest &&
docker tag hyperledger/fabric-tools:x86_64-1.0.0 hyperledger/fabric-tools:latest

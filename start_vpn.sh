DATA_DIR="$PWD/../vpn-data"
EXPOSE_PORT=3000
docker run -v $DATA_DIR:/etc/openvpn -d -p $EXPOSE_PORT:1194/udp --cap-add=NET_ADMIN vpn

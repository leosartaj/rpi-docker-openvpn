DATA_DIR="$PWD/../vpn-data"
USER=$1
docker run -v $DATA_DIR:/etc/openvpn --log-driver=none --rm -it vpn easyrsa build-client-full $USER nopass
docker run -v $DATA_DIR:/etc/openvpn --log-driver=none --rm -it vpn ovpn_getclient $USER > "$PWD/../$USER.ovpn"

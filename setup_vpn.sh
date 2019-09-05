docker build . -t vpn
DATA_DIR="$PWD/../vpn-data"
mkdir $DATA_DIR
IP_ADDR=`hostname -I | awk -F ' ' '{print $1}'`
EXPOSE_PORT=3000
docker run -v $DATA_DIR:/etc/openvpn --rm vpn ovpn_genconfig -u udp://$IP_ADDR:$EXPOSE_PORT
docker run -v $DATA_DIR:/etc/openvpn --rm -it vpn ovpn_initpki

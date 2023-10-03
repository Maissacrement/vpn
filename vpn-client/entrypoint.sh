#!/usr/bin/env bash

main () {
    sleep 15
    echo "http://$1:8080"
    curl "http://$1:8080" -o /root/.ovpn/client.ovpn
    # Auto connect
    openvpn --config /root/.ovpn/client.ovpn
}

main $1
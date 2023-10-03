FROM ubuntu

WORKDIR /app

RUN apt update &&\
    apt install -y openvpn curl dnsutils inetutils-ping net-tools vim &&\
    mkdir -p /dev/net && \
    mknod /dev/net/tun c 10 200 && \
    chmod 600 /dev/net/tun

COPY ./entrypoint.sh .

RUN mkdir -p /root/.ovpn &&\
    chmod +x /app/entrypoint.sh

COPY ./client.ovpn /root/.ovpn/client.ovpn

#ENTRYPOINT ["tail", "-f", "/dev/null"]
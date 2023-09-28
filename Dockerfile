FROM ubuntu

WORKDIR /app
COPY ./client.ovpn .

RUN apt update &&\
    apt install -y openvpn &&\
    mkdir -p /dev/net && \
    mknod /dev/net/tun c 10 200 && \
    chmod 600 /dev/net/tun

CMD ["openvpn", "--config", "/app/client.ovpn"]

#ENTRYPOINT ["tail", "-f", "/dev/null"]
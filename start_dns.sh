docker rm -f dnsmasq
docker run \
    --name dnsmasq \
    -d \
    -p 53:53/udp \
    -p 8080:8080 \
    -v $(pwd)/dnsmasq.conf:/etc/dnsmasq.conf \
    quay.io/jpillora/dnsmasq-gui:latest

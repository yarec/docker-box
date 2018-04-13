#FROM andyshinn/dnsmasq
FROM yarec/dns

COPY dnsmasq.hosts /etc/dnsmasq.hosts

RUN echo addn-hosts=/etc/dnsmasq.hosts >> /etc/dnsmasq.conf


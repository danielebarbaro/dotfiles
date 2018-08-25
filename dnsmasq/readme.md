After `dnsmasq install:

    * `services stop dnsmasq && sudo services stop dnsmasq`
    * `cp dnsmasq.conf /usr/local/etc/dnsmasq.conf`
    * `sudo mkdir -pv /etc/resolver`
    * `sudo bash -c 'echo "nameserver 127.0.0.1" > /etc/resolver/local'`
    * `sudo services restart dnsmasq`

 


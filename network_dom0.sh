brctl addbr xenbr0
ifconfig xenbr0 192.168.1.101/24
ifconfig xenbr0 up

iptables --flush
iptables --table nat --flush
iptables --table nat --delete-chain
iptables --table nat --append POSTROUTING --out-interface usb0 -j MASQUERADE
iptables --append FORWARD --in-interface xenbr0 -j ACCEPT

echo 1 > /proc/sys/net/ipv4/ip_forward
apt-get install iptables-persistent

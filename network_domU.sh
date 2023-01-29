ip a
ip link set eth0 up
ip addr add 192.168.1.102/24 dev eth0
ip route add 192.168.1.0/24 dev eth0
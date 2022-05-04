h1s1 ip addr del 10.0.0.1/8 dev h1s1-eth0
h1s1 ip link add link h1s1-eth0 name h1s1-eth0.10 type vlan id 10
h1s1 ip addr add 10.0.0.3/24 dev h1s1-eth0.10
h1s1 ip link set dev h1s1-eth0.10 up
h2s1 ip addr del 10.0.0.4/8 dev h2s1-eth0
h2s1 ip link add link h2s1-eth0 name h2s1-eth0.110 type vlan id 110
h2s1 ip addr add 10.0.0.4/24 dev h2s1-eth0.110
h2s1 ip link set dev h2s1-eth0.110 up
h2s3 ip addr del 10.0.0.6/8 dev h2s3-eth0
h2s3 ip link add link h2s3-eth0 name h2s3-eth0.110 type vlan id 110
h2s3 ip addr add 10.0.1.4 dev h2s3-eth0.110
h2s3 ip link set dev h2s3-eth0.110 up
h1s3 ip addr del 10.0.0.3/8 dev h1s3-eth0
h1s3 ip link add link h1s3-eth0 name h1s3-eth0.10 type vlan id 10
h1s3 ip addr add 10.0.1.3/24 dev h1s3-eth0.10
h1s3 ip link set dev h1s3-eth0.10 up
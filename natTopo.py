from logging import info
from mininet.cli import CLI
from mininet.net import Mininet

net = Mininet(topo = None)

info( '*** Add hosts\n')
h1 = net.addHost('h1',ip = '10.0.0.3')
h2 = net.addHost('h2',ip = '10.0.1.3')

info( '*** Add switches\n')
s1 = net.addSwitch('s1')
s2 = net.addSwitch('s2')
s3 = net.addSwitch('s3')

info( '*** Adding controller\n' )
c0=net.addController(name='c0', controller=RemoteController, protocols='OpenFlow13', ip='127.0.0.1')

info( '*** Add links\n')
net.addLink(s1, s2)
net.addLink(s1, s3)
net.addLink(s2, h1)
net.addLink(s3, h2)


info( '*** Starting network\n')
net.build()

info( '*** Starting controllers\n')
for controller in net.controllers: 
    controller.start()

info( '*** Starting switches\n')
net.get('s4').start([c0])
net.get('s2').start([c0])
net.get('s3').start([c0])
net.get('s1').start([c0])

info( '*** Post configure switches and hosts\n')

info( '*** Add NAT connectivity\n')
net.addNAT().configDefault()
info( '*** Hosts are running and should have internet connectivity\n')
net.start()
CLI(net)
net.stop()

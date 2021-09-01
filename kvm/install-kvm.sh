# install cpu checker
sudo apt install cpu-checker
# check cpu kvm support
kvm-ok
# install kvm modules, libvirt and virt-manager
sudo apt install qemu-kvm libvirt-clients libvirt-daemon-system bridge-utils virt-manager
# show network interfaces
ip a
ifconfig
# edit network interfaces to bridge connection
 sudo nano /etc/network/interfaces
# in the interfaces file add new bridge interface and set interface ip to manual, linking to the bridge
# the bridge will manage ip addressing 
# auto br0
# iface eth inet manual
# iface br0 inet dhcp
#    bridge_ports eth
# to run virtual machine(s) without root privileges add user to the groups
sudo adduser user1 libvirt
sudo adduser user1 libvirt-qemu
# reboot the machine

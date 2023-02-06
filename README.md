# Projet_Virtualisation_5GI
 Ce projet  pour but de deployer un modele migration sur machine virtuelle base sur l;'hyperviseur xen
 
 # voous trouverrez ci dessous les differentes commandes pour lancer le project 
 
 # Installation de xen et des differents outils
 
 # Back up all the XEN configuration under /etc/xen/ Uninstall XEN and QEMU:
 
 apt purge xen-system-amd64 xen-hypervisor-common xen-hypervisor-4.9-amd64 xen-hypervisor-4.11-amd64 xenstore-utils xen-utils-common xen-tools xe-guest-utilities  libxen-dev qemu-system qemu-system-common qemu-block-extra qemu-efi-aarch64 qemu-efi-arm qemu-slof qemu-system qemu-system-arm qemu-system-common qemu-system-data qemu-system-gui qemu-system-mips qemu-system-misc qemu-system-ppc qemu-system-s390x qemu-system-sparc qemu-system-x86 qemu-user qemu-user-binfmt qemu-utils
apt autoremove

# Upgrade to Ubuntu 20.10
Edit /etc/update-manager/release-upgrades and set Prompt=normal in order to upgrade to latest version (non LTS).

do-release-upgrade

# Install just the XEN hypervisor on Ubuntu 20.10
apt install xen-hypervisor

# suivre le tutoriel en annexe pour la configuration de la machine virtuelle

# pour configurer executer le script 
sudo network_dom0.sh

# commande a executer au niveau du dom0
sudo ./network_domU.sh

# commande a executer au niveau du domU
sudo ./deploy.sh

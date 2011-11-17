#!/bin/bash

#### CONFIGURATION PART - If you need to change something... ####
## Define a version number for every part of Netkit
netkit_ver=2.8
netkit_fs_ver=5.2
netkit_kernel_ver=2.8

## Netkit directory
dir=Netkit
#### END OF CONFIG - Now we need to rock the stage! ####

## Let's create the fuckin' operating directory
mkdir ~/${dir}
cd ~/${dir}

## Export useful variables. We will write 'em to bashrc later.

export NETKIT_HOME=/home/`whoami`/${dir}
export PATH=$NETKIT_HOME/bin:$PATH

## Download packages
wget -c http://wiki.netkit.org/download/netkit/netkit-${netkit_ver}.tar.bz2
wget -c http://wiki.netkit.org/download/netkit-filesystem/netkit-filesystem-i386-F${netkit_fs_ver}.tar.bz2
wget -c http://wiki.netkit.org/download/netkit-kernel/netkit-kernel-i386-K${netkit_kernel_ver}.tar.bz2

## Extracting stuff here. Bloat it out babe!
for i in $( ls ); do
	tar -xvjf ${i}
done

mv netkit/* . && rm -rf netkit

rm -rf *.tar.*

## Some funny stuff for our .bashrc :>
echo "export NETKIT_HOME=/home/`whoami`/${dir}" >> ~/.bashrc
echo "export MANPATH=:$NETKIT_HOME/man" >> ~/.bashrc
echo "export PATH=$NETKIT_HOME/bin:$PATH" >> ~/.bashrc

## Check!
./check_configuration.sh

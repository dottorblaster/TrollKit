#!/bin/bash

## Define a version number for every part of Netkit
netkit_ver = 2.8
netkit_fs_ver = 5.2
netkit_kernel_ver = 2.8

## Netkit directory
dir = Netkit

## Let's create the fuckin' operating directory
mkdir ~/$dir
cd ~/$dir

## Download packages
# wget various things

## Extracting stuff here. Bloat it out babe!
for i in $( ls ); do
	tar -xvjf $i.tar.bz2
done


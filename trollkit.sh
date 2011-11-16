#!/bin/bash

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


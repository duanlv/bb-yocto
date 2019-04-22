#!/bin/bash

git submodule init
git submodule update

cd poky-thud
git clone -b thud git://git.openembedded.org/meta-openembedded
git clone -b thud https://github.com/meta-qt5/meta-qt5.git
cd -


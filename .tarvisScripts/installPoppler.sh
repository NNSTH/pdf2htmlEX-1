#!/bin/bash

# This bash scripts **installs** poppler

# See: https://github.com/pdf2htmlEX/buildAndPackagingTools/blob/master/building/awsEC2/scripts/doinstallPoppler

cd poppler/build

sudo make install

cd ..

sudo mkdir -p               /usr/include/poppler
sudo cp poppler/poppler/*.h /usr/include/poppler

sudo mkdir -p               /usr/include/poppler/goo
sudo cp poppler/goo/*.h     /usr/include/poppler/goo

sudo mkdir -p               /usr/include/poppler/fofi
sudo cp poppler/fofi/*.h    /usr/include/poppler/fofi

sudo mkdir -p               /usr/include/poppler/splash
sudo cp poppler/splash/*.h  /usr/include/poppler/splash

sudo cp poppler/build/poppler/poppler-config.h \
        /usr/include/poppler


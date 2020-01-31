#!/bin/bash
wget http://www.fil.ion.ucl.ac.uk/spm/download/restricted/eldorado/spm12.zip
wget https://www.fil.ion.ucl.ac.uk/spm/download/spm12_updates/spm12_updates_r7487.zip
wget http://www.neuro.uni-jena.de/cat12/cat12_latest.zip
wget http://www.diedrichsenlab.org/download/suit_v3.3.zip
wget http://www.restfmri.net/forum/sites/default/files/190205_RESTplus_V1.22.tar.gz
wget http://www.restfmri.net/forum/sites/default/files/RESTplus%20V1.21%20Manual.pdf

mkdir ../install
unzip spm12.zip -d ../install/
unzip  spm12_updates_r7487.zip  -d../install/spm12/
unzip cat12_latest.zip -d ../install/spm12/toolbox/
unzip suit_v3.3.zip -d ../install/spm12/toolbox/
rm -rf ../install/spm12/toolbox/__MACOSX

tar -xvf 190205_RESTplus_V1.22.tar.gz -C ../install/spm12/toolbox/
mv RESTplus%20V1.21%20Manual.pdf ../install/spm12/toolbox/190205_RESTplus_V1.22/RESTplus_V1.21_Manual.pdf

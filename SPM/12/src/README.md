wget http://www.fil.ion.ucl.ac.uk/spm/download/restricted/eldorado/spm12.zip
wget https://www.fil.ion.ucl.ac.uk/spm/download/spm12_updates/spm12_updates_r7487.zip
wget http://www.neuro.uni-jena.de/cat12/cat12_latest.zip
wget http://www.diedrichsenlab.org/download/suit_v3.3.zip

mkdir ../install
unzip spm12.zip -d ../install/
unzip  spm12_updates_r7487.zip  -d../install/spm12/
unzip cat12_latest.zip -d ../install/spm12/toolbox/
unzip suit_v3.3.zip -d ../install/spm12/toolbox/
rm -rf ../install/spm12/toolbox/__MACOSX


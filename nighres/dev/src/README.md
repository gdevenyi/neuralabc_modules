git clone https://github.com/piloubazin/nighres.git 
cd nighres
git checkout master 
module load anaconda3/2018.12 #XXX NOTE: java in anaconda3/2019.10 does not compile correctly, missing a jhi.h file?
## Manually remove the pip install command from the build.sh file (last line), to make sure that it does not install locally (it will fail with nighresjava)
# if you did this incorrectly the first time, you will need to blow away the install dir and redo it or weirdness ensues
./build.sh
# need to create this directory to keep setuptools happy and allow the install properly with paths etc
mkdir -p ../../install//lib/python3.7/site-packages/
export PYTHONPATH=../../install//lib/python3.7/site-packages/:${PYTHONPATH}
python3 setup.py install --prefix /opt/quarantine/nighres/dev/install/


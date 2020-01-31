git clone https://github.com/nighres/nighres
cd nighres
git branch release-1.2.0
module load anaconda3
## Manually remove the pip install command from the build.sh file (last line), to make sure that it does not install locally (it will fail with nighresjava)
# if you did this incorrectly the first time, you will need to blow away the install dir and redo it or weirdness ensues
./build.sh
# need to create this directory to keep setuptools happy and allow the install properly with paths etc
mkdir -p ../../install//lib/python3.7/site-packages/
export PYTHONPATH=../../install//lib/python3.7/site-packages/:${PYTHONPATH}
python3 setup.py install --prefix /opt/quarantine/nighres/1.2/install/


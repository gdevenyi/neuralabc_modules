git clone https://github.com/nighres/nighres
cd nighres
module load anaconda3
./build.sh
# need to create this directory to keep setuptools happy and allow the install properly with paths etc
mkdir -p ../../install/lib/python3.7/site-packages/
python setup.py install --prefix /opt/quarantine/nighres/20190509/install/
export PYTHONPATH=../../install//lib/python3.7/site-packages/:${PYTHONPATH}
python setup.py install --prefix /opt/quarantine/nighres/20190509/install/

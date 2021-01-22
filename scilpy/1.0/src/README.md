git clone https://github.com/scilus/scilpy.git 
cd scilpy
git checkout master 
module load anaconda3
mkdir -p ../../install//lib/python3.7/site-packages/
export PYTHONPATH=../../install//lib/python3.7/site-packages/:${PYTHONPATH}
python3 setup.py install --prefix /opt/quarantine/scilpy/1.0/install/

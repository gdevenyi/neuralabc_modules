wget https://github.com/Mouse-Imaging-Centre/pyminc/archive/v0.52.tar.gz
tar xzvf v0.52.tar.gz
cd pyminc-0.52
mkdir -p ../../install//lib/python3.7/site-packages/
export PYTHONPATH=../../install//lib/python3.7/site-packages/:${PYTHONPATH}
python setup.py install --prefix ../../install

module load minc-toolkit-v2 anaconda3 pyminc
cd minc-stuffs
./autogen.sh
./configure --with-build-path=${MINC_TOOLKIT} --prefix ${QUARANTINE_PATH}/minc-stuffs/0.1.24/install
make && make install
mkdir -p  ../../install//lib/python3.7/site-packages/
export PYTHONPATH=../../install//lib/python3.7/site-packages/:${PYTHONPATH}
python setup.py install --prefix ../../install/

# first ensure that anaconda3 has all of the packages installed by adding them 
# to the quarantine
#packages here:
https://raw.githubusercontent.com/mne-tools/mne-python/master/environment.yml

#clone git
git clone https://github.com/mne-tools/mne-python.git

#checkout release version
cd mne-python
git checkout maint/0.19

#install
# need to create this directory to keep setuptools happy and allow the install properly with paths etc
mkdir -p ../../install/lib/python3.7/site-packages/
export PYTHONPATH=../../install/lib/python3.7/site-packages/:${PYTHONPATH}
python3 setup.py install --prefix /opt/quarantine/mne-python/0.19.2/install/


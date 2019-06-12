# neuralabc_modules

All modules stored in /opt/quarantine

General process:

0) `su - networkadmin`
1) locate source for software package / module (python etc)
2) download into (or git clone) `/opt/quarantine/${name}/${version}/src`
3) compile as necessary
4) binaries should be compiled to/directed to `/opt/quarantine/${name}/${version}/install`
   python modules should use python setup.py, which requires the following steps in order to ensure that they can be loaded properly:
     ```sh
     > mkdir -p ../../install//lib/python3.7/site-packages/ 
     > export PYTHONPATH=../../install//lib/python3.7/site-packages/:${PYTHONPATH} 
     > python setup.py install --prefix ../../install
     ```
5) Properly document your installation steps in `src/README.md`
5) copy .lua file from existing module and adapt to update the required modules and alter required paths as necessary
6) run `/opt/quarantine/link-new-modules.sh`

# Uploading changes

```
> git add ...
> git commit ...
> git push origin master
```

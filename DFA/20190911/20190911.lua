prereq("anaconda3")
conflict(myModuleName())

local quarantinepath    = os.getenv("QUARANTINE_PATH")
local basepath = pathJoin(quarantinepath,myModuleName(),myModuleVersion(),"install")

prepend_path( "PYTHONPATH",           pathJoin(basepath,"fMRI_dfa"))

prereq("anaconda3")
prereq("minc-toolkit-v2")
conflict(myModuleName())

local quarantinepath    = os.getenv("QUARANTINE_PATH")
local basepath = pathJoin(quarantinepath,myModuleName(),myModuleVersion(),"install")

prepend_path( "PATH",           pathJoin(basepath,"bin"))
prepend_path( "PYTHONPATH",           pathJoin(basepath,"lib/python3.7/site-packages"))

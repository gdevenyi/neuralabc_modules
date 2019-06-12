conflict(myModuleName())

prereq("R")
prereq("minc-toolkit-v2/1.9.17")

local quarantinepath    = os.getenv("QUARANTINE_PATH")
local basepath = pathJoin(quarantinepath,myModuleName(),myModuleVersion(),"install")

prepend_path( "R_LIBS",           basepath)

conflict(myModuleName())

local quarantinepath    = os.getenv("QUARANTINE_PATH")
local basepath = pathJoin(quarantinepath,myModuleName(),myModuleVersion(),"install/workbench")

prepend_path( "PATH",           pathJoin(basepath,"exe_linux64"))

conflict(myModuleName())

local quarantinepath    = os.getenv("QUARANTINE_PATH")
local basepath = pathJoin(quarantinepath,myModuleName(),myModuleVersion(),"install")

prepend_path( "PATH",           basepath)
prepend_path( "PATH",           pathJoin(basepath,"bin"))

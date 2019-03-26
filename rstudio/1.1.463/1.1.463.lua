conflict(myModuleName())
prereq("R")

local quarantinepath    = os.getenv("QUARANTINE_PATH")
local basepath = pathJoin(quarantinepath,myModuleName(),myModuleVersion(),"install")

prepend_path( "PATH",           pathJoin(basepath,"usr/lib/rstudio/bin/"))

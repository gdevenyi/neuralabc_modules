conflict(myModuleName())

local quarantinepath    = os.getenv("QUARANTINE_PATH")
local basepath = pathJoin(quarantinepath,myModuleName(),myModuleVersion(),"install")

prepend_path( "PATH",           pathJoin(basepath,"bin"))
setenv("FSLDIR", basepath)
setenv("FSLWISH", pathJoin(basepath,"bin/fslwish"))
setenv("FSLTCLSH", pathJoin(basepath,"bin/fsltclsh"))
setenv("FSLOUTPUTTYPE", "NIFTI_GZ")

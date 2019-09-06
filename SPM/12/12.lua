conflict(myModuleName())
prereq("matlab")
local quarantinepath    = os.getenv("QUARANTINE_PATH")
local basepath = pathJoin(quarantinepath,myModuleName(),myModuleVersion(),"install")

prepend_path( "PATH",           pathJoin(basepath,"spm12"))
prepend_path( "MATLABPATH",           pathJoin(basepath,"spm12"))
prepend_path( "MATLABPATH",           pathJoin(basepath,"spm12/toolbox/cat12"))
prepend_path( "MATLABPATH",           pathJoin(basepath,"spm12/toolbox/suit"))
conflict("minc-toolkit-v2")

local quarantinepath    = os.getenv("QUARANTINE_PATH")
local basepath = pathJoin(quarantinepath,myModuleName(),myModuleVersion(),"install")

setenv( "MINC_TOOLKIT", basepath )
setenv( "MINC_TOOLKIT_VERSION", "1.9.17-20190313")
setenv( "MINC_FORCE_V2", "1" )
setenv( "MINC_COMPRESS", "9" )
setenv( "VOLUME_CACHE_THRESHOLD", "-1" )
prepend_path( "MNI_DATAPATH", pathJoin(basepath,"share") )
prepend_path( "MNI_DATAPATH", pathJoin(quarantinepath,"resources") )

prepend_path( "PATH",           pathJoin(basepath,"pipeline"))
prepend_path( "PATH",           pathJoin(basepath,"bin"))

prepend_path( "PERL5LIB",       pathJoin(basepath,"pipeline"))
prepend_path( "PERL5LIB",       pathJoin(basepath,"perl"))

prepend_path( "LD_LIBRARY_PATH", pathJoin(basepath,"lib"))
prepend_path( "LD_LIBRARY_PATH", pathJoin(basepath,"lib/InsightToolkit"))

prepend_path( "MANPATH", pathJoin(basepath,"man" ))

prepend_path( "CPATH", pathJoin(basepath,"include"))

#wget https://github.com/Mouse-Imaging-Centre/RMINC/archive/v1.5.2.2.tar.gz 

cat <<-END | Rscript --vanilla -
library(devtools)
withr::with_libpaths(new = "/opt/quarantine/RMINC/1.5.2.2/install", action="prefix", install_local("RMINC-1.5.2.2",
	args = "--configure-args='--with-build-path=/opt/quarantine/minc-toolkit-v2/1.9.17/install'", dependencies=TRUE, upgrade_dependencies=TRUE))
withr::with_libpaths(new = "/opt/quarantine/RMINC/1.5.2.2/install", action="prefix", install_github("Mouse-Imaging-Centre/MRIcrotome",
	args = "--configure-args='--with-build-path=/opt/quarantine/minc-toolkit-v2/1.9.17/install'", dependencies=TRUE, upgrade_dependencies=TRUE))
withr::with_libpaths(new = "/opt/quarantine/RMINC/1.5.2.2/install", action="prefix", install_github("cfhammill/rbrainbrowser",
	args = "--configure-args='--with-build-path=/opt/quarantine/minc-toolkit-v2/1.9.17/install'", dependencies=TRUE, upgrade_dependencies=TRUE))
END

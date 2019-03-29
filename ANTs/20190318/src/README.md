git clone --recursive https://github.com/ANTsX/ANTs.git

mkdir ants-build
cd ants-build
ccmake ../ANTs
make

cp -r bin/ lib/ ../../install
cp -r ../ANTs/Scripts/* ../../install/bin

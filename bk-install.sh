#!/bin/bash
cd ..
mv glew-cmake/ glew-cmake-src/
#remove previous installation
rm -r glew-cmake-build
rm -r glew-cmake
mkdir glew-cmake-build
mkdir glew-cmake
cd glew-cmake-build
cmake \
-DCMAKE_BUILD_TYPE=Release \
-DCMAKE_INSTALL_PREFIX=../glew \
-DGLEW_OSMESA=Off \
-DONLY_LIBS=On \
-DUSE_GLU=Off \
-Dglew-cmake_BUILD_SHARED=On \
-Dglew-cmake_BUILD_STATIC=On \
../glew-cmake-src
make -j 8
make install
cd ..
rm -r glew-cmake-build
cp glew-cmake-src/bk.cmake glew

#-DFREETYPE_INCLUDE_DIR_freetype2=/usr/include/freetype2
#-DFREETYPE_INCLUDE_DIR_ft2build=/usr/include/freetype2
#-DFREETYPE_LIBRARY_RELEASE=/usr/lib/libfreetype.so
#-DFontconfig_INCLUDE_DIR=/usr/include
#-DFontconfig_LIBRARY=/usr/lib/libfontconfig.so
#-Dpkgcfg_lib_PKG_FONTCONFIG_fontconfig=/usr/lib/libfontconfig.so
#-Dpkgcfg_lib_PKG_FONTCONFIG_freetype=/usr/lib/libfreetype.so

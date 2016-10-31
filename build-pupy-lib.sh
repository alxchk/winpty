#!/bin/sh

MINGW64=${MINGW64:-x86_64-w64-mingw32-g++}
MINGW32=${MINGW32:-i686-w64-mingw32-g++}

make clean
make MINGW_CXX="${MINGW32} -Os" build/winpty.dll
mv build/winpty.dll ../../packages/windows/x86/

make clean
make MINGW_CXX="${MINGW64} -Os" build/winpty.dll
mv build/winpty.dll ../../packages/windows/amd64/

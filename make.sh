#!/bin/bash
N=`nproc`
if [ $# -gt 0 ]; then
	N="$1"
fi

mkdir build
cd build
cmake -G "Unix Makefiles" \
    -DCMAKE_BUILD_TYPE="RELEASE" \
    -DLLVM_TARGETS_TO_BUILD="X86" \
    -DLLVM_ENABLE_PROJECTS=clang \
    ../llvm

make -j$N


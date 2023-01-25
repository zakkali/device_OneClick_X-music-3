#!/bin/bash
cd ../../../../frameworks/av
git apply -v --check ../../device/OneClick/X-music Ⅲ/patches/frameworks_av.patch
cd ../native
git apply -v --check ../../device/OneClick/X-music Ⅲ/patches/frameworks_native.patch
git apply -v --check ../../device/OneClick/X-music Ⅲ/patches/frameworks_native2.patch
cd ../../hardware/libhardware
git apply -v --check ../../device/OneClick/X-music Ⅲ/patches/hardware_libhardware.patch
cd ../../system/core
git apply -v --check ../../device/OneClick/X-music Ⅲ/patches/system_core.patch
git apply -v --check ../../device/OneClick/X-music Ⅲ/patches/system_core2.patch
cd ../../frameworks/base
git apply -v --check ../../device/OneClick/X-music Ⅲ/patches/key.patch

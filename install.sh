#!/bin/sh

mkdir -p miniroot
mkdir -p miniroot/{lib,include}

ROOT="$(pwd)/miniroot"

cd v8/out

cp obj/senkora/libsenkora_v8.a $ROOT/lib/libv8.a
cp -r ../include/* $ROOT/include/

cd ..

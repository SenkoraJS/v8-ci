#!/bin/sh

mkdir -p "$(pwd)/miniroot"
mkdir -p "$(pwd)/miniroot/lib"
mkdir -p "$(pwd)/miniroot/include"

ROOT="$(pwd)/miniroot"

cd v8/out

cp obj/senkora/libsenkora_v8.a $ROOT/lib/libv8.a
cp -r ../include/* $ROOT/include/

cd ..

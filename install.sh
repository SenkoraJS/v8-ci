#!/bin/sh

mkdir -vp "$(pwd)/miniroot"
mkdir -vp "$(pwd)/miniroot/lib"
mkdir -vp "$(pwd)/miniroot/include"

ROOT="$(pwd)/miniroot"

cd v8/out

cp obj/senkora/libsenkora_v8.a $ROOT/lib/libv8.a
cp -r ../include/* $ROOT/include/

cd ..

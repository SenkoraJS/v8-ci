#!/bin/sh

pwd
ls
find . -maxdepth 1

mkdir -vp "$(pwd)/miniroot"
mkdir -vp "$(pwd)/miniroot/lib"
mkdir -vp "$(pwd)/miniroot/include"

ROOT="$(pwd)/miniroot"

cd v8/out

cp -v obj/senkora/libsenkora_v8.a $ROOT/lib/libv8.a
cp -rv ../include/* $ROOT/include/

cd ..

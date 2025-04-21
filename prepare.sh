#!/bin/sh

git clone --depth 1 https://chromium.googlesource.com/chromium/tools/depot_tools.git

cd depot_tools
PATH="$PATH:$(pwd)"
cd ..

fetch v8

cd v8
git checkout $(cat ../V8_VERSION)

patch -p1 < ../v8.patch
mkdir -p senkora
cp ../BUILD.gn ./senkora/BUILD.gn

gn gen --root-target=//senkora out --args="$(cat ../V8_ARGS)"

cd ..

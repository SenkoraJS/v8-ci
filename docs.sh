#!/bin/sh

if [ ! -d "doxygen-awesome-css" ]; then
    git clone https://github.com/jothepro/doxygen-awesome-css.git
    cd doxygen-awesome-css
    git checkout v2.3.4
    cd ..
fi

doxygen Doxyfile

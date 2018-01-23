#!/bin/bash

cwd=$(pwd);
# packages containing docs 
packages=("" "-middleware" "-stylers" "-node" "-services" "-ai" "-azure" "-choices");

for dir in ${packages[*]};
do
    path=$cwd"/libraries/builder"$dir"/docs/";
    cd $path;
    echo "Compiling docs for package at: $path";
    bash build-docs.sh;
done

# END OF LINE

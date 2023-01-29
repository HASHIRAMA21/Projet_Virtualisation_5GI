#! /bin/bash


export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

cd project
cd postgresql-12.0
make check-world

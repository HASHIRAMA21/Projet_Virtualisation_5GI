#!/bin/bash

apt install gcc zlib1g-dev libreadline6-dev
tar -xvf postgresql-12.0.tar.bz2
cd postgresql-12.0
./configure --help
mkdir /opt/PostgreSQL-12/
./configure --prefix=/opt/PostgreSQL-12
make
make install


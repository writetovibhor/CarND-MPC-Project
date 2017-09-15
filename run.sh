#!/bin/bash
cd /project
mkdir build
cd build
cmake .. && make -j4 && ./mpc

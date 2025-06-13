#! /bin/bash

git pull --recurse-submodules

scons platform=linuxbsd target=editor precision=double

# production=yes

#! /bin/bash

git checkout master
git submodule init
git pull --recurse-submodules
git fetch upstream
git merge upstream/master master
git push --force
git checkout arez2/changes
git pull --recurse-submodules
git rebase master
cd modules/limboai
git pull upstream support-godot-4-5
cd ..
cd ..
git push --force

scons platform=linuxbsd target=editor precision=double

# production=yes

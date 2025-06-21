#! /bin/bash

git checkout master
git submodule init
git pull --recurse-submodules
git fetch upstream
git merge upstream/master master
git push --force
git checkout arez2/changes
git rebase master
git push --force

scons platform=linuxbsd target=editor precision=double

# production=yes

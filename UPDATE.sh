#! /bin/bash
set -e

# Update master from upstream
git checkout master
git fetch upstream master
git rebase upstream/master

git submodule update --init --recursive

git push --force-with-lease

# Rebase your feature branch
git checkout arez2-changes
git rebase master

git submodule update --remote --recursive

git add modules/limboai modules/arez_bullets

# Record submodule change but only if something changed
git diff --cached --quiet || git commit --fixup=b12f858c916e593b1db26e9bc71989ffb888a293 # the "Update submodules" commit
# rewrite everything on arez2-changes that comes after master
git rebase --autosquash master
git push --force-with-lease

# Build (accesskit=no means no screenreader support)
scons platform=linuxbsd precision=double arch=x86_64 accesskit=no
# production=yes

#! /bin/bash

scons platform=linuxbsd precision=double arch=x86_64 dev_build=yes optimize=debug linker=mold accesskit=no && ./bin/godot.linuxbsd.editor.dev.double.x86_64

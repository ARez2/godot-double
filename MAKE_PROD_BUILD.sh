#! /bin/bash

scons platform=linuxbsd precision=double arch=x86_64 production=yes linker=mold accesskit=no && ./bin/godot.linuxbsd.editor.double.x86_64

#!/usr/bin/env bash
mkdir /usr/local/lib/rip-lib
cpanm -l /usr/local/lib/rip-lib Parse::Win32Registry
cp rip /usr/local/bin
chmod +x /usr/local/bin/rip
mkdir /usr/local/bin/plugins
cp -a plugins/. /usr/local/bin/plugins

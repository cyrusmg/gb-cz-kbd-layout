#!/bin/bash

WORK_DIR=`pwd`
pushd /usr/share/X11/xkb/symbols/
cp cz cz.bck
patch cz -i $WORK_DIR/cz.diff
popd

pushd /usr/share/X11/xkb/rules/
cp base.xml base.xml.bck
cp evdev.xml evdev.xml.bck
patch base.xml -i $WORK_DIR/base.diff
patch evdev.xml -i $WORK_DIR/evdev.diff
popd

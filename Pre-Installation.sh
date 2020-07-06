#!/usr/bin/env bash

###################
# DEFINITIONS
###################

service='Xcode'
# old_plugins_dir=~/Library/Developer/Xcode/Plug-ins
plugins_dir=~/../../Applications/Xcode.app/Contents/PlugIns

###################
# PRE-INSTALLATION SCRIPT
###################

# If Kotlin plug-in previously installed
# delete it, open and close Xcode so it opens
# once without the plugin and new installation
# will be seen.

# rm -rf "${old_plugins_dir}/Kotlin.ideplugin"
sudo rm -rf "${plugins_dir}/Kotlin.ideplugin"
open -a $service
pkill -x $service
defaults delete com.apple.dt.Xcode DVTPlugInManagerNonApplePlugIns-Xcode-$(xcodebuild -version | grep Xcode | cut -d ' ' -f 2)
echo done
# mkdir -p $old_plugins_dir
# cp -r Kotlin.ideplugin $old_plugins_dir
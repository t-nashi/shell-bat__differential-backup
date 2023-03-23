#!/bin/bash

# .DS_Store生成ON（作る）
defaults write com.apple.desktopservices DSDontWriteNetworkStores False
Killall Finder

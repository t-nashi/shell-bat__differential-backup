#!/bin/bash

# .DS_Store生成OFF（作らない）
defaults write com.apple.desktopservices DSDontWriteNetworkStores True
Killall Finder

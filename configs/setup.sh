#!/usr/bin/env bash
cd ~/configs
git config core.worktree "../../"
git reset --hard origin/master
[ -f ~/Library/Preferences/com.apple.symbolichotkeys.plist ] && cp ~/Library/Preferences/com.apple.symbolichotkeys.plist ~/Library/Preferences/com.apple.symbolichotkeys.plist.bak
ln -sf com.apple.symbolichotkeys.plist ~/Library/Preferences/com.apple.symbolichotkeys.plist

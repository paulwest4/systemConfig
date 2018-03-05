#!/usr/bin/env bash
cd ~/configs
git config core.worktree "../../"
git reset --hard origin/master
[ -f ~/Library/Preferences/com.apple.symbolichotkeys.plist ] && cp ~/Library/Preferences/com.apple.symbolichotkeys.plist ~/Library/Preferences/com.apple.symbolichotkeys.plist.bak
/bin/cp com.apple.symbolichotkeys.plist ~/Library/Preferences/com.apple.symbolichotkeys.plist

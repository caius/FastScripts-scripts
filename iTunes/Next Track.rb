#!/usr/local/bin/macruby
framework "Foundation"
framework "ScriptingBridge"

itunes = SBApplication.applicationWithBundleIdentifier("com.apple.itunes")
load_bridge_support_file "/Users/caius/Library/BridgeSupport/iTunes.bridgesupport"
itunes.nextTrack

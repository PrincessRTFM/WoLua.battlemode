# Requires WoLua
This is a [WoLua](https://github.com/PrincessRTFM/WoLua) command script for FFXIV. You will need to install the WoLua plugin via Dalamud (instructions at link) in order to use it.

![GitHub last commit (branch)](https://img.shields.io/github/last-commit/PrincessRTFM/WoLua.battlemode/master?label=updated)
[![GitHub issues](https://img.shields.io/github/issues-raw/PrincessRTFM/WoLua.battlemode?label=known%20issues)](https://github.com/PrincessRTFM/WoLua.battlemode/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc)

[![Support me!](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/V7V7IK9UU)

## Usage
This script is designed to replace the default draw/sheathe hotkey, either by vanilla macro or QoLBar button. It attempts to replicate the core vanilla functionality, but with improvements based on context and emote availability.

If you're in combat, the script immediately draws your weapon, using the default (fast) animation. If you aren't in combat, the script will toggle your weapon-drawn state, using the `/draw` and `/sheathe` emotes _if_ they are unlocked _and_ you aren't moving. If the appropriate emote isn't available (or if you're currently moving), the script will simply use the default (fast) animation instead, since emotes don't play while in motion.

Additionally, if you have the Reset Enmity Command plugin loaded, and you are currently "in combat", the script will use the `/resetenmityall` command from that plugin to reset striking dummies you may be in combat with, before doing the rest of its work as outlined above. This means that using this (ideally hotkeyed) script will _also_ clear any striking dummies that are locked in combat with you, without requiring you to do it manually.

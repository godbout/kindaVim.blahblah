<div align="center">
    <img src="https://github.com/godbout/kindaVim.theapp/blob/master/assets/icon.png">
    <h1>brings Vim moves to macOS input fields. and a bit more.</h1>
</div>

![awesome stuff happening in there](https://raw.githubusercontent.com/godbout/kindaVim.theapp/master/assets/gif.gif "hehe")

---

# WHY

brain space and energy are limited. why learning six hundred thousand new keyboard shortcuts when you can use Vim moves everywhere. also macOS is widely inconsistent like sometimes you can go up and down with ctrl+n/ctrl+p but also sometimes not. even in Apple's own apps. so jk FTW.

and also it's fucking cool.

# LIKED THE GIF?

maybe [watch the videos](https://www.youtube.com/channel/UC3ZP3QFMhNn3ivJgqoEW4Ug) first if you're not sure you wanna read further.

# HOW DOES IT WORK

by default kindaVim runs in `Auto Mode` and tries to read the text of the focused app:

1. if it can read and modify the text, it uses the [Accessibility Strategy](#user-content-accessibility-strategy). theoritically you can have a full Vim experience. pragmatically some stuff will currently be missing so please [ask](https://github.com/godbout/kindaVim.theapp/issues/new) for what you need!
2. if it can't read the text, it uses the [Keyboard Strategy](#user-content-keyboard-strategy) and tries to impersonate Vim through key remapping. it's a little more wonky than the [Accessibility Strategy](#user-content-accessibility-strategy).

you can ask kindaVim to ignore an app in the `Preferences`.
some apps also have macOS Accessibility restrictions (mostly browsers) where you can read the text but not modify it. some other apps are just plain liars (like all Electron apps). so you can enforce the [Keyboard Strategy](#user-content-keyboard-strategy) for those in the `Preferences`.

# HOW 'BOUT THE MONEY

kindaVim will be a subscription of one ☕️ (USD$3) a month. the beta is free and contains the full set of features. i have no idea when i'll drop the beta. the beta may last 10 years. who knows. or maybe till 2047.

# CURRENT VIM IMPLEMENTATION

## Accessibility Strategy

(P.S.: the Unit and UI Tests for the Accessibility Strategy are now [open source](https://github.com/godbout/AccessibilityStrategyTestApp).)

| Normal Mode | including count |
| :---: | :---: | 
| _ | ❌️ | 
| [( | ❌️ | 
| [{ | ❌️ | 
| ]) | ❌️ | 
| ]} | ❌️ | 
| { | ❌️ | 
| } | ❌️ | 
| % | ❌️ | 
| ^ | ❌️ | 
| << | ❌️ | 
| >> | ❌️ | 
| $ | ❌️ | 
| 0 | ❌️ | 
| A | ❌️ | 
| a | ❌️ | 
| B | ❌️ | 
| b | ❌️ | 
| C | ❌️ | 
| caw | ❌️ | 
| cc | ❌️ | 
| cF | ❌️ | 
| cf | ✅️ | 
| cG | ❌️ | 
| cgg | ❌️ | 
| ci' | ❌️ | 
| ci" | ❌️ | 
| ci( | ❌️ | 
| ci) | ❌️ | 
| ci[ | ❌️ | 
| ci] | ❌️ | 
| ci{ | ❌️ | 
| ci} | ❌️ | 
| ci` | ❌️ | 
| ciw | ❌️ | 
| control r | ❌️ | 
| cT | ❌️ | 
| ct | ✅️ | 
| D | ❌️ | 
| daw | ❌️ | 
| dd | ❌️ | 
| dF | ❌️ | 
| df | ❌️ | 
| dG | ❌️ | 
| dgg | ❌️ | 
| dj | ❌️ | 
| dk | ❌️ | 
| dT | ❌️ | 
| dt | ❌️ | 
| E | ❌️ | 
| e | ❌️ | 
| F | ❌️ | 
| f | ✅️ | 
| G | ❌️ | 
| g_ | ❌️ | 
| g^ | ❌️ | 
| g$ | ❌️ | 
| g0 | ❌️ | 
| gE | ❌️ | 
| ge | ❌️ | 
| gg | ❌️ | 
| gI | ❌️ | 
| gj | ❌️ | 
| gk | ❌️ | 
| h | ❌️ | 
| I | ❌️ | 
| i | ❌️ | 
| j | ❌️ | 
| k | ❌️ | 
| l | ✅️ | 
| O | ❌️ | 
| o | ❌️ | 
| P | ❌️ | 
| p | ❌️ | 
| r | ❌️ | 
| T | ❌️ | 
| t | ✅️ | 
| u | ❌️ | 
| W | ❌️ | 
| w | ❌️ | 
| x | ❌️ | 
| yF | ❌️ | 
| yf | ❌️ | 
| yi' | ❌️ | 
| yi" | ❌️ | 
| yi( | ❌️ | 
| yi) | ❌️ | 
| yi[ | ❌️ | 
| yi] | ❌️ | 
| yi{ | ❌️ | 
| yi} | ❌️ | 
| yi` | ❌️ | 
| yiw | ❌️ | 
| yT | ❌️ | 
| yt | ❌️ | 
| yy | ❌️ | 

| Visual Mode | including count |
| :---: | :---: |
| _ | ❌️ |
| ^ | ❌️ |
| $ | ❌️ |
| 0 | ❌️ |
| B | ❌️ |
| b | ❌️ |
| c | ❌️ |
| d | ❌️ |
| E | ❌️ |
| e | ❌️ |
| F | ❌️ |
| f | ❌️ |
| G | ❌️ |
| g^ | ❌️ |
| g$ | ❌️ |
| g0 | ❌️ |
| gE | ❌️ |
| ge | ❌️ |
| gg | ❌️ |
| gI | ❌️ |
| gj | ❌️ |
| gk | ❌️ |
| h | ❌️ |
| iw | ❌️ |
| j | ❌️ |
| k | ❌️ |
| l | ❌️ |
| o | ❌️ |
| T | ❌️ |
| t | ❌️ |
| V | ❌️ |
| v | ❌️ |
| W | ❌️ |
| w | ❌️ |
| y | ❌️ |

## Keyboard Strategy

| Normal Mode | including count |
| :---: | :---: |
| _ | ❌️ |
| ^ | ❌️ |
| $ | ❌️ |
| 0 | ❌️ |
| A | ❌️ |
| a | ❌️ |
| b | ❌️ |
| C | ❌️ |
| cb | ❌️ |
| cc | ❌️ |
| cG | ❌️ |
| cgg | ❌️ |
| ciw | ❌️ |
| control d | ❌️ |
| control r | ❌️ |
| control u | ❌️ |
| D | ❌️ |
| db | ❌️ |
| dd | ❌️ |
| dG | ❌️ |
| dgg | ❌️ |
| dj | ❌️ |
| dk | ❌️ |
| e | ❌️ |
| G | ❌️ |
| g_ | ❌️ |
| g^ | ❌️ |
| g$ | ❌️ |
| g0 | ❌️ |
| ge | ❌️ |
| gg | ❌️ |
| gI | ❌️ |
| gj | ❌️ |
| gk | ❌️ |
| h | ❌️ |
| l | ✅️ |
| i | ❌️ |
| j | ❌️ |
| k | ❌️ |
| l | ❌️ |
| O | ❌️ |
| o | ❌️ |
| P | ❌️ |
| p | ❌️ |
| r | ❌️ |
| s | ❌️ |
| u | ❌️ |
| w | ❌️ |
| X | ❌️ |
| x | ❌️ |
| yiw | ❌️ |
| yy | ❌️ |

| Visual Mode | including count |
| :---: | :---: |
| _ | ❌️ |
| ^ | ❌️ |
| $ | ❌️ |
| 0 | ❌️ |
| b | ❌️ |
| c | ❌️ |
| d | ❌️ |
| e | ❌️ |
| G | ❌️ |
| g^ | ❌️ |
| g$ | ❌️ |
| g0 | ❌️ |
| ge | ❌️ |
| gg | ❌️ |
| gI | ❌️ |
| gj | ❌️ |
| gk | ❌️ |
| h | ❌️ |
| j | ❌️ |
| k | ❌️ |
| l | ❌️ |
| V | ❌️ |
| v | ❌️ |
| w | ❌️ |
| y | ❌️ |

lol those tables.

# ROADMAP
* a plethora of missing Vim moves ([ask!](https://github.com/godbout/kindaVim.theapp/issues/new))
* update all moves to support new global count system ([ask!](https://github.com/godbout/kindaVim.theapp/issues/new))
* hybrid mode: some apps like browsers implement the Accessibility but have restrictions. you can move around perfectly but the Accessibility cannot simulate the `enter` key or delete text. hybrid mode will be a combination of the [Accessibility Strategy](#user-content-the-accessibility-strategy) for some movements and the [Keyboard Strategy](#user-content-the-keyboard-strategy) for some others in order to bypass those restrictions
* better handling of broswers and Electron shit apps

# KNOWN ISSUES
* kindaVim currently considers escaped quotes as quotes. sad
* brackets within quotes are also not ignored. double sad
* some bug with caw, daw and empty lines. will fix when bored
* some moves may not work in some browers, even when enforcing the Keyboard Strategy. hybrid mode will solve this
* indentation <<, >> is currently not configurable and stuck to 4 spaces (haha)

# REQUESTS

* to request a missing move, open an issue: https://github.com/godbout/kindaVim.theapp/issues/new
* to request a feature, open an issue: https://github.com/godbout/kindaVim.theapp/issues/new
* to report a bug, open an issue: https://github.com/godbout/kindaVim.theapp/issues/new
* in case you just want to open an issue though, open an issue: https://github.com/godbout/kindaVim.theapp/issues/new

# ACKNOWLEDGMENTS, THANKS, AND KISSES

* [Takayama Fumihiko](https://github.com/tekezo) for [Karabiner-Elements](https://karabiner-elements.pqrs.org), my first experience of Vim moves on macOS. great option if you need lots of customizations
* [David Balatero](https://github.com/dbalatero) for [VimMode.spoon](https://github.com/dbalatero/VimMode.spoon), showing there's a way to make that shit work. great option if you're looking for free/open source
* [Sindre Sorhus](https://github.com/sindresorhus) for [LaunchAtLogin](https://github.com/sindresorhus/LaunchAtLogin) and [KeyboardShortcuts](https://github.com/sindresorhus/KeyboardShortcuts), that saved me countless of hours of headaches
* [Sparkle](https://sparkle-project.org) for the Sofware Updater. this is good shit

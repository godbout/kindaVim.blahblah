<div align="center">
    <img src="https://github.com/godbout/kindaVim.theapp/blob/master/assets/icon.png">
    <h1>brings Vim moves to macOS input fields. and non input fields. is that everywhere yet?</h1>
</div>

![awesome stuff happening in there](https://raw.githubusercontent.com/godbout/kindaVim.theapp/master/assets/gif.gif "hehe")

---

# WHY THAT SHIT

brain space and energy are limited. why learning six hundred thousand new keyboard shortcuts when you can use Vim moves everywhere. also macOS is widely inconsistent like sometimes you can go up and down with ctrl+n/ctrl+p but also sometimes not. even in Apple's own apps. so jk FTW.

and also it's fucking cool.

# LOVED THE GIF?

maybe [watch the videos](https://www.youtube.com/channel/UC3ZP3QFMhNn3ivJgqoEW4Ug) first if you're not sure you wanna read further.

# WHAT APPS DOES THAT SHIT SUPPORT

* native apps with inputs that support the macOS Accessibility, through its [Accessibility Engine](#user-content-kv-accessibility-strategy). it's text manipulation. so it's like Vim:

![Xcode input](https://raw.githubusercontent.com/godbout/kindaVim.theapp/master/assets/Xcode-input.gif "Xcode input")

* native apps with inputs that don't support the macOS Accessibility, through its [Keyboard Text Element Engine](#user-content-kv-keyboard-strategy). it's key remapping, less precise than the Accessibility Engine:

![Mail input](https://raw.githubusercontent.com/godbout/kindaVim.theapp/master/assets/Mail-input.gif "Mail input")

* restricted apps like browsers and some Catalyst apps, through its Hybrid Engine. it's a mix of text manipulation and key remapping. the end result is like Vim:

![Safari input](https://raw.githubusercontent.com/godbout/kindaVim.theapp/master/assets/Safari-input.gif "Safari input")

* Electron apps that return valid Accessibility data, through its Accessibility Engine for Electron. Electron apps are pretty wild in their implementation of the macOS Accessibility. so results depend on the apps themselves:

![Logseq input](https://raw.githubusercontent.com/godbout/kindaVim.theapp/master/assets/Logseq-input.gif "Logseq input")

* Electron apps that return wrong Accessibility data, through its [Keyboard Text Element Engine](#user-content-kv-keyboard-strategy). key remapping. less precise:

![ClickUp input](https://raw.githubusercontent.com/godbout/kindaVim.theapp/master/assets/ClickUp-input.gif "ClickUp input")

* all non-input fields, through its [Keyboard Non Text Element Engine](#user-content-kv-keyboard-strategy). that's another type of key remapping that brings Vim's philosophy to the macOS UI:

![Xcode UI1](https://raw.githubusercontent.com/godbout/kindaVim.theapp/master/assets/Xcode-UI1.gif "Xcode UI1")
![Xcode UI2](https://raw.githubusercontent.com/godbout/kindaVim.theapp/master/assets/Xcode-UI2.gif "Xcode UI2")
![Mail UI](https://raw.githubusercontent.com/godbout/kindaVim.theapp/master/assets/Mail-UI.gif "Mail UI")
![Alfred UI](https://raw.githubusercontent.com/godbout/kindaVim.theapp/master/assets/Alfred-UI.gif "Alfred UI")
![Help Menu UI](https://raw.githubusercontent.com/godbout/kindaVim.theapp/master/assets/Help-Menu-UI.gif "Help Menu UI")

# HOW 'BOUT THE MONEY SHIT

you can use kindaVim fully for USD$0 a lifetime, but everyday from 5am to 1pm (Winter Schedule) it'll need its 8 hours of sleep. if you wanna torture kV 24/7, you'll need to get him a [good cup of ☕️ a month](https://subscribe.kindavim.app) (USD$3.69). 

P.S.: if you're happy with the state of the old betas you can always download them on GitHub. they don't need coffee. last one is [1b25](https://github.com/godbout/kindaVim.theapp/releases/tag/1b.25).

other P.S.: the number of Awesome Humans currently subscribed is updated daily on [kindaVim.app](https://kindavim.app) 😀️

# CURRENT VIM IMPLEMENTATION SHIT

## Motions

### kV Accessibility Strategy

| Normal Mode | including count | copies deletion | &emsp;&emsp;&emsp;&emsp;&emsp;&emsp; | Visual Mode | including count | copies deletion 
| :---:       | :---:           |  :---:          | :---:                                | :---:       | :---:           | :---:           
| `_`         | ❌️              |                 |                                      | `_`         | ❌️              |                 
| `,`         |  ✅️             |                 |                                      | `^`         |                 |
| `;`         |  ✅️             |                 |                                      | `$`         | ❌️              |
| `?`         |  ✅️             |                 |                                      | `~`         |                 |
| `[(`        | ❌️              |                 |                                      | `0`         |                 |
| `[(`        | ❌️              |                 |                                      | `B`          | ❌️             |
| `[{`        | ❌️              |                 |                                      | `<BS>`       | ❌️             |
| `])`        | ❌️              |                 |                                      | `b`          | ❌️             |
| `]}`        | ❌️              |                 |                                      | `C`          |                | ✅️️
| `{`        | ❌️               |                 |                                      | `CTRL-H`     | ❌️             |
| `}`        | ❌️               |                 |                                      | `c`          |                | ✅️️
| `/`        | ✅️               |                 |                                      | `D`          |                | ✅️️
| `%`        |                  |                 |                                      | `d`          |                | ✅️️
| `^`        |                  |                 |                                      | `E`          | ❌️             |
| `<<`        | ❌️              |                 |                                      | `e`          | ❌️             |
| `>>`        | ❌️              |                 |                                      | `F`          | ✅️             |
| `~`        | ✅️              |                  |                                      | `f`          | ✅️             |
| `$`        | ❌️              |                  |                                      | `G`          | ❌️             |
| `0`        |                 |                  |                                      | `g^`          |              | 
| `A`        | ️❌️              |                  |                                      | `g$`          | ❌️             | 
| `a`        | ❌️              |                  |                                      | `g0`          |              |
| `B`        | ✅️️              |                  |                                      | `gE`          | ❌️             |
| `<BS>`     | ✅️️              |                  |                                      | `ge`          | ❌️             |
| `b`        | ✅️️              |                  |                                      | `gg`          | ❌️             |
| `C`        | ❌️              | ✅️️               |                                      | `gI`          |               |
| `CTRL-H`   | ✅️️              |                  |                                      | `gj`          | ❌️              |
| `CTRL-R`   | ❌️              |                  |                                      | `gk`          | ❌️              |
| `c$`       | ❌️              | ✅️️               |                                      | `h`          | ❌️              |
| `caW`      | ❌️              |       ✅️️         |                                      | `iW`          | ❌️              |
| `caw`      | ❌️              |        ✅️️        |                                      | `iw`          | ❌️              |
| `cB`      | ✅️️              |        ✅️️         |                                      | `j`          | ❌️              |
| `cb`      | ✅️️              |        ✅️️         |                                      | `k`          | ❌️              |
| `cc`      | ❌️              |        ✅️️         |                                      | `l`          | ❌️              |
| `cE`      | ✅️️              |        ✅️️         |                                      | `<Left>`     | ❌️              | 
| `ce`      | ✅️️              |        ✅️️         |                                      | `o`          |                 |
| `cF`      | ✅️              |        ✅️         |                                      | `R`          |                 |  ✅️️ 
| `cf`      | ✅️              |        ✅️         |                                      | `S`          |                 |  ✅️️ 
| `cG`      | ❌️              |        ✅️️         |                                      | `s`          |                 |  ✅️️ 
| `cgg`      | ❌️              |       ✅️         |                                      | `T`          | ✅️              |
| `ci'`      | ❌️              |       ✅️️         |                                      | `t`          | ✅️️              |
| `ci"`      | ❌️              |       ✅️️         |                                      | `V`          | ❌️              |
| `ci(`      | ❌️              |       ✅️         |                                      | `v`          | ❌️              |
| `ci)`      | ❌️              |       ✅️         |                                      | `W`          | ❌️              |
| `ci[`      | ❌️              |       ✅️         |                                      | `w`          | ❌️              |
| `ci]`      | ❌️              |       ✅️         |                                      | `X`          |                 | ✅️️ 
| `ci{`      | ❌️              |       ✅️        |                                       | `x`          |                 |  ✅️️
| `ci}`      | ❌️              |       ✅️         |                                      | `Y`          |                 |
| <code>ci`</code> | ❌️        |        ✅️️       |                                       | `y`          |                 |
| `ciB`      |   ❌️            | ✅️              |                                       
| `cib`      |   ❌️            | ✅️              |                                       
| `ciW`      |   ❌️            | ✅️️              |                                       
| `ciw`      |  ❌️             | ✅️️              |                                       
| `cl`       | ❌️              | ✅️️              |                                       
| `cT`       | ✅️              | ✅️ 
| `ct`       | ✅️              | ✅️ 
| `cW`       | ❌️              | ✅️️ 
| `cw`       | ❌️              | ✅️️ 
| `D`       | ❌️              | ✅️️
| `d$`      | ❌️               | ✅️️
| `daW`     | ❌️               | ✅️️
| `daw`     | ❌️               | ✅️️
| `dB`     | ✅️️               | ✅️️
| `db`     | ✅️️               | ✅️️
| `dd`     | ❌️               | ✅️️
| `dE`     | ✅️️               | ✅️️
| `de`     | ✅️️               | ✅️️
| `dF`     | ✅️               | ✅️
| `df`     | ✅️               | ✅️
| `dG`     | ❌️               | ✅️️
| `dgg`     | ❌️               | ✅️
| `dh`     | ❌️               | ✅️️
| `diW`     | ❌️               | ✅️️
| `diw`     | ❌️               | ✅️️
| `dj`     | ❌️               | ✅️️
| `dk`     | ❌️               | ✅️️
| `dl`     | ❌️               | ✅️️
| `dT`     | ✅️               | ✅️ 
| `dt`     | ✅️               | ✅️
| `dW`     | ✅️                | ✅️
| `dw`     | ✅️                | ✅️
| `E`     | ✅️️                 
| `e`     | ✅️️                 
| `F`     | ✅️                 
| `f`     | ✅️                 
| `G`     | ✅️                 
| `g_`     | ❌️     
| `g^`     | 
| `g$`     | ❌️                 
| `g0`     |                  
| `gE`     | ✅️️                 
| `ge`     | ✅️️                 
| `gg`     | ✅️                 
| `gI`     | ❌️              
| `gj`     | ❌️                 
| `gk`     | ❌️                 
| `h`      | ✅️                 
| `I`      | ❌️                 
| `i`      | ❌️               
| `J`      | ❌️                 
| `j`      | ❌️                 
| `k`      | ❌️                 
| `l`      | ✅️                 
| `<Left>` | ✅️️
| `O`      | ❌️                 
| `o`      | ❌️                 
| `P`      | ❌️                 
| `p`      | ❌️                 
| `r`      | ✅️                 
| `S`      | ❌️                  | ✅️️  
| `s`      | ❌️                  | ✅️️
| `T`      | ✅️                 
| `t`      | ✅️                 
| `u`      | ❌️                 
| `W`      | ✅️️                 
| `w`      | ✅️️                 
| `X`      | ❌️                  | ✅️️  
| `x`      | ❌️                  | ✅️️
| `yF`     | ✅️                 
| `yf`     | ✅️                 
| `yi'`     | ❌️                 
| `yi"`    | ❌️                 
| `yi(`     | ❌️                 
| `yi)`     | ❌️                 
| `yi[`     | ❌️                 
| `yi]`     | ❌️                 
| `yi{`     | ❌️                 
| `yi}`     | ❌️                 
|  <code>yi`</code> | ❌️ | 
| `yiw` | ❌️ | 
| `yT` | ✅️ | 
| `yt` | ✅️ | 
| `yy` | ❌️ | 

### kV Keyboard Strategy

| Normal Mode | including count | copies deletion | &emsp;&emsp;&emsp;&emsp;&emsp;&emsp; | Visual Mode | including count | copies deletion
| :---:       | :---:           |  :---:          | :---:                                | :---:       |     :---:       | :---:
| `_`         | ❌️              |                 |                                      | `_`         | ❌️              |
| `^`         |               |                  |                                       | `^`         |                 |
| `$`         | ❌️              |                  |                                     | `$`         | ❌️              |
| `0`         |               |                  |                                       | `0`         |                 |
| `A`         | ❌️              |                  |                                     | `<BS>`      | ✅              |
| `a`         | ❌️              |                  |                                     | `b`         | ❌️              |
| `<BS>`      | ✅️️              |                  |                                     | `C`         |                 |  ✅️️
| `b`         | ❌️              |                  |                                     | `CTRL-H`    | ✅              |
| `C`         | ❌️              |      ✅️️          |                                     | `c`         |                 |  ✅️️
| `CTRL-B`    | ❌️              |                  |                                     | `D`         |                 |  ✅️️
| `CTRL-D`    | ❌️              |                  |                                     | `d`         |                 |  ✅️️
| `CTRL-F`    | ❌️              |                  |                                     | `e`          | ❌️              |
| `CTRL-H`    | ✅️️              |                  |                                     | `G`          | ❌️              |
| `CTRL-R`    | ❌️              |                  |                                     | `g^`          |                 |
| `CTRL-U`    | ❌️              |                  |                                     | `g$`          | ❌️              |
| `c$`        | ❌️              |      ✅️️          |                                     | `g0`          |                 |
| `cb`        | ❌️              |      ✅️          |                                     | `ge`          | ❌️              |
| `cc`        | ❌️              |      ✅️️          |                                     | `gg`          | ❌️              |
| `ce`        | ❌️              |      ✅️️          |                                     | `gI`          |                | 
| `cG`        | ❌️              |      ✅️️          |                                     | `gj`          | ❌️              | 
| `cgg`        | ❌️              |     ✅️          |                                     | `gk`          | ❌️              |
| `ciw`        | ❌️              |     ✅️️          |                                     | `h`           | ✅️              |                                    
| `cl`         | ❌️               |   ✅️             |                                   | `iw`          | ❌️
| `cw`        | ❌️              |      ✅️️           |                                    | `j`           | ❌️              |                                    
| `D`        | ❌️              |       ✅️️           |                                    | `k`           | ❌️              |
| `d$`       | ❌️               |      ✅️            |                                   | `<Left>`      | ✅              |
| `db`        | ❌️              |      ✅️           |                                    | `l`           | ✅️              |
| `dd`        | ❌️              |      ✅️️           |                                    | `R`           | ❌️              | ✅️ 
| `de`        | ❌️              |      ✅️           |                                    | `S`           | ❌️              | ✅️ 
| `dG`        | ❌️              |      ✅️️           |                                    | `s`           | ❌️              | ✅️    
| `dgg`       | ❌️              |      ✅️           |                                    | `V`           | ❌️              |
| `dh`       | ❌️              |       ✅️️           |                                    | `v`           | ❌️              |
| `diw`       | ❌️              |      ✅️️           |                                    | `w`           | ❌️              |
| `dj`       | ❌️              |       ✅️           |                                    | `X`           |                 |  ✅️️
| `dk`       | ❌️              |       ✅️           |                                    | `x`           |                 |  ✅️️
| `dl`       | ❌️              |       ✅️️           |                                    | `Y`           |                 |  
| `dw`       | ❌️              |       ✅️️           |                                    | `y`           |                 |
| `e`        | ❌️              |                    |                                    
| `G`        | ❌️              |                    |                                    
| `g_`        | ❌️              |
| `g^`        |                 |
| `g$`        | ❌️              |
| `g0`        |                 |
| `ge`        | ❌️              |
| `gg`        | ❌️              |
| `gI`        | ❌️              |
| `gj`        | ❌️              |
| `gk`        | ❌️              |
| `h`         | ✅️              |
| `l`         | ✅️              |
| `i`         | ❌️              |
| `J`         | ❌️              |
| `j`         | ✅              |
| `k`         | ✅              |
| `l`         | ❌️              |
| `<Left>`    | ✅              |
| `O`         | ❌️              |
| `o`         | ❌️              |
| `P`         | ❌️              |
| `p`         | ❌️              |
| `r`         | ❌️              |
| `S`         | ❌️              |       ✅️️
| `s`         | ❌️              |       ✅️
| `u`         | ❌️              |
| `w`         | ❌️              |
| `X`         | ❌️              |✅️️
| `x`         | ❌️              |✅️️
| `yiw`       | ❌️              |
| `yy`       | ❌️               |

### Commands

| Command |
| :---:   |
| `:q`       
| `:q!`
| `:w`         
| `:wq`        
| `:x`
| `ZZ`

# SHIT, DID YOU KNOW?

![bye bye caps lock](https://raw.githubusercontent.com/godbout/kindaVim.theapp/master/assets/did-you-know.png "haha")

# ROADMAP SHIT
* add a plethora of missing Vim moves ([ask!](https://github.com/godbout/kindaVim.theapp/issues/new))
* update all moves to support new global count system ([ask!](https://github.com/godbout/kindaVim.theapp/issues/new))
* users' requests

# FEEDBACK SHIT

* whether you need a missing move, want to report a bug or ask for a feature, just [open an issue](https://github.com/godbout/kindaVim.theapp/issues/new).

# TESTS SHIT AND OPEN SOURCE SHIT

the [tests](https://github.com/godbout/AccessibilityStrategyTestApp) describing the Vim moves are open source. you can use those to build your own implementation, or if you just want to learn more about Vim moves, or if you just can't get enough good self-induced migraines.

# SHIT ACKNOWLEDGMENTS, THANKS, AND KISSES

* [Takayama Fumihiko](https://github.com/tekezo) for [Karabiner-Elements](https://karabiner-elements.pqrs.org), my first experience of Vim moves on macOS. great option if you need lots of customizations
* [David Balatero](https://github.com/dbalatero) for [VimMode.spoon](https://github.com/dbalatero/VimMode.spoon), showing there's a way to make that shit work. great option if you're looking for free/open source
* [Sindre Sorhus](https://github.com/sindresorhus) for [LaunchAtLogin](https://github.com/sindresorhus/LaunchAtLogin) and [KeyboardShortcuts](https://github.com/sindresorhus/KeyboardShortcuts), that saved me countless of hours of headaches
* [Sparkle](https://sparkle-project.org) for the Sofware Updater. this is good shit
* [Clipy](https://github.com/Clipy) for [Sauce](https://github.com/Clipy/Sauce), a magnificent Swift package to handle Keyboard Layouts headaches shits

<div align="center">
    <img src="https://github.com/godbout/kindaVim.theapp/blob/master/assets/icon.png">
    <h1>brings Vim moves to macOS input fields. and non input fields. is that everywhere yet?</h1>
</div>

![awesome stuff happening in there](https://raw.githubusercontent.com/godbout/kindaVim.theapp/master/assets/gif.gif "hehe")

---

# Source Code

kindaVim is a paid app but you can check out the source, remove the licensing, and compile it yourself. Source is available here:

* App Core and kindaVim Engine Core: https://github.com/godbout/kindaVim
* Accessibility Engine, to handle the macOS Accessibility: https://github.com/godbout/AXEngine
* Accessibility Strategy, to handle Vim motions through text manipulation: https://github.com/godbout/AccessibilityStrategy
* Keyboard Strategy, to handle Vim motions through key mapping: https://github.com/godbout/KeyboardStrategy
* Commands, to handle Vim commands through key mapping: https://github.com/godbout/Commands
* KeyCombination, to wrap Apple keyboard events: https://github.com/godbout/KeyCombination
* Common, for shared structs, enums etc.: https://github.com/godbout/Common

# License

If you don't want to bother compiling from scratch, you can get a license at https://subscribe.kindavim.app. It costs one ☕️ (or 🍺) a month. 
Or use an old beta, they're free. The last one is [1b25](https://github.com/godbout/kindaVim.theapp/releases/tag/1b.25).

# Why kindaVim

Brain space and energy are limited.
Why learning six hundred thousand new keyboard shortcuts when you can use Vim moves everywhere.
Also macOS is widely inconsistent like sometimes you can go up and down with ctrl+n/ctrl+p but also sometimes not.
Even in Apple's own apps. So jk FTW.

And also it's fucking cool.

# Current Vim Implementation

## Motions

### kV Accessibility Strategy

| Normal Mode                            | count | &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; | Visual Mode | count |
| ---:                                   | :---:           | :---:                                | ---:                                        | :---:       
| `_`                                    | ✅️              |                                      | `_`                                         | ✅️️          
| `,`                                    | ✅️              |                                      | `,`                                         | ✅️          
| `;`                                    | ✅️              |                                      | `;`                                         | ✅️          
| `?`                                    | ✅️              |                                      | `^`                                         |             
| `?<CR>`                                | ✅️              |                                      | `+`, `<CR>`, `CTRL-M`                       | ✅️
| `[(`                                   | ❌️              |                                      | `<`                                         | ✅️
| `[(`                                   | ❌️              |                                      | `>`                                         | ✅️
| `[{`                                   | ❌️              |                                      | `$`, `<End>`                                | ✅️️          
| `])`                                   | ❌️              |                                      | `~`                                         |             
| `]}`                                   | ❌️              |                                      | `0`                                         |             
| `{`                                    | ❌️              |                                      | `B`, `<C-Left>`                             | ✅️          
| `}`                                    | ❌️              |                                      | `b`, `<S-Left>`                             | ✅️          
| `/`                                    | ✅️              |                                      | `C`                                         |             
| `/<CR>`                                | ✅️              |                                      | `c`, `s`                                    |             
| `%`                                    |                 |                                      | `D`                                         |             
| `^`                                    |                 |                                      | `d`, `<Del>`, `x`                           |             
| `+`, `<CR>`, `<CTRL-M>`                | ✅️️              |                                      | `E`                                         | ✅️          
| `<<`                                   | ✅️️              |                                      | `e`                                         | ✅️          
| `>>`                                   | ✅️️              |                                      | `F`                                         | ✅️          
| `~`                                    | ✅️              |                                      | `f`                                         | ✅️          
| `$`, `<End>`                           | ✅️              |                                      | `G`                                         | ✅️          
| `0`                                    |                 |                                      | `g_`                                        | ✅️
| `A`                                    | ❌️              |                                      | `g^`                                        |             
| `a`                                    | ❌️              |                                      | `g$`, `g<End>`                              | ✅️️          
| `B`, `<C-Left>`                        | ✅️️              |                                      | `g0`, `g<Home>`                             |             
| `b`, `<S-Left>`                        | ✅️️              |                                      | `gE`                                        | ✅️          
| `C`, `c$`                              | ❌️              |                                      | `ge`                                        | ✅️          
| `CTRL-R`                               | ✅️              |                                      | `gg`                                        | ✅️          
| `c0`                                   |                 |                                      | `gI`                                        |             
| `caW`                                  | ❌️              |                                      | `gj`, `g<Down>`                             | ✅️          
| `caw`                                  | ❌️              |                                      | `gk`, `g<Up>`                               | ✅️          
| `cB`                                   | ✅️️              |                                      | `h`, `<BS>`, `CTRL-H`, `<Left>`             | ✅️          
| `cb`                                   | ✅️️              |                                      | `iW`                                        | ❌️          
| `cc`                                   | ❌️              |                                      | `iw`                                        | ❌️          
| `cE`                                   | ✅️️              |                                      | `j`, `CTRL-J`, `CTRL-N`, `<Down>`           | ✅️          
| `ce`                                   | ✅️️              |                                      | `k`, `CTRL-P`, `<Up>`                       | ✅️          
| `cF`                                   | ✅️              |                                      | `l`, `<Right>`, `<Space>`                   | ✅️          
| `cf`                                   | ✅️              |                                      | `o`                                         |             
| `ch`                                   | ✅️              |                                      | `R`                                         |             
| `cG`                                   | ❌️              |                                      | `S`                                         |             
| `cgg`                                  | ❌️              |                                      | `T`                                         | ✅️          
| `ci'`                                  | ❌️              |                                      | `t`                                         | ✅️️          
| `ci"`                                  | ❌️              |                                      | `u`                                         | 
| `ci(`                                  | ❌️              |                                      | `V`                                         | ❌️          
| `ci)`                                  | ❌️              |                                      | `v`                                         | ❌️          
| `ci[`                                  | ❌️              |                                      | `W`, `<C-Right>`                            | ✅️          
| `ci]`                                  | ❌️              |                                      | `w`, `<S-Right>`                            | ✅️          
| `ci{`                                  | ❌️              |                                      | `X`                                         |             
| `ci}`                                  | ❌️              |                                      | `Y`                                         |             
| <code>ci`</code>                       | ❌️              |                                      | `y`                                         |                 
| `ciB`                                  | ❌️              |                                      
| `cib`                                  | ❌️              |                                      
| `ciW`                                  | ❌️              |                                      
| `ciw`                                  | ❌️              |                                      
| `cj`                                   | ❌️              |                                      
| `ck`                                   | ❌️              |                                      
| `cT`                                   | ✅️              |                                      
| `ct`                                   | ✅️              |                                      
| `cW`                                   | ❌️              |                                      
| `cw`                                   | ❌️              |                                      
| `D`, `d$`                              | ❌️              |                                      
| `d0`                                   |                 |                                      
| `daW`                                  | ❌️              |                                      
| `daw`                                  | ❌️              |                                      
| `dB`                                   | ✅️️              |                                      
| `db`                                   | ✅️️              |                                      
| `dd`                                   | ❌️              |
| `dE`                                   | ✅️️             
| `de`                                   | ✅️️             
| `dF`                                   | ✅️             
| `df`                                   | ✅️             
| `dG`                                   | ❌️             
| `dgg`                                  | ❌️            
| `diW`                                  | ❌️            
| `diw`                                  | ❌️            
| `dj`                                   | ❌️             
| `dk`                                   | ❌️             
| `dT`                                   | ✅️             
| `dt`                                   | ✅️             
| `dW`                                   | ✅️             
| `dw`                                   | ✅️             
| `E`                                    | ✅️️                 
| `e`                                    | ✅️️                 
| `F`                                    | ✅️                 
| `f`                                    | ✅️                 
| `G`                                    | ✅️                 
| `g_`                                   | ✅️     
| `g^`                                   | 
| `g$` , `g<End>`                        | ✅️                 
| `g0`, `g<Home>`                        |                  
| `gE`                                   | ✅️️                 
| `ge`                                   | ✅️️                 
| `gg`                                   | ✅️                 
| `gI`                                   | ❌️              
| `gj`, `g<Down>`                        | ✅️               
| `gk`, `g<Up>`                          | ✅️                 
| `H`                                    | ✅️
| `h`, `<BS>`, `CTRL-H`, `<Left>`        | ✅️                 
| `I`                                    | ❌️                 
| `i`                                    | ❌️               
| `J`                                    | ❌                 
| `j`, `CTRL-J`, `CTRL-N`, `<Down>`      | ✅️                 
| `k`, `CTRL-P`, `<Up>`                  | ✅️                 
| `L`                                    | ✅️
| `l`, `<Right>`, `<Space>`              | ✅️
| `M`                                    |
| `N`                                    | ✅️               
| `n`                                    | ✅️               
| `O`                                    | ❌️                 
| `o`                                    | ❌️                 
| `P`                                    | ❌️                 
| `p`                                    | ❌️                 
| `r`                                    | ✅️                 
| `S`                                    | ❌️                  
| `s`, `cl`                              | ✅️                  
| `T`                                    | ✅️                 
| `t`                                    | ✅️                 
| `u`                                    | ✅️                 
| `W`, `<C-Right>`                       | ✅️️                 
| `w`, `<S-Right>`                       | ✅️️                 
| `X`, `dh`                              | ✅️                 
| `x`, `<Del>`, `dl`                     | ✅️                  
| `Y`                                    | ✅️                  
| `yF`                                   | ✅️                 
| `yf`                                   | ✅️                 
| `yi'`                                  | ❌️                 
| `yi"`                                  | ❌️                 
| `yi(`                                  | ❌️                 
| `yi)`                                  | ❌️                 
| `yi[`                                  | ❌️                 
| `yi]`                                  | ❌️                 
| `yi{`                                  | ❌️                 
| `yi}`                                  | ❌️                 
|  <code>yi`</code>                      | ❌️ 
| `yiw`                                  | ❌️ 
| `yT`                                   | ✅️ 
| `yt`                                   | ✅️ 
| `yy`                                   | ✅️ 

### kV Keyboard Strategy

| Normal Mode                                 | count | &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; | Visual Mode  | count | 
| ---:                                        | :---: | :---:                                | ---:                                       | :---:
| `_`                                         | ❌️    |                                      | `_`                                        | ❌️              
| `?`                                         | ❌️    |                                      | `^`                                        |                 
| `?<CR>`                                     | ❌️    |                                      | `+`, `<CR>`, `CTRL-M`                      | ✅️              
| `/`                                         | ❌️    |                                      | `$`, `<End>`                               | ❌️              
| `/<CR>`                                     | ❌️    |                                      | `0`                                        |                 
| `^`                                         |       |                                      | `b`, `<S-Left>`                            | ✅️️              
| `+`, `<CR>`, `CTRL-M`                       | ✅️️    |                                      | `C`                                        |                 
| `<<`                                        | ✅️️    |                                      | `c`, `s`                                   |                 
| `>>`                                        | ✅️️    |                                      | `D`                                        |                 
| `$`, `<End>`                                | ❌️    |                                      | `d`, `<Del>`, `x`                          |                 
| `0`                                         |       |                                      | `e`                                        | ✅️️              
| `A`                                         | ❌️    |                                      | `G`                                        | ❌️              
| `a`                                         | ❌️    |                                      | `g^`                                       |                 
| `b`, `<S-Left>`                             | ✅️️    |                                      | `g_`                                       | ❌️
| `C`, `c$`                                   | ❌️    |                                      | `g$`, `g<End>`                             | ❌️              
| `CTRL-B`                                    | ❌️    |                                      | `g0`, `g<Home>`                            |                 
| `CTRL-D`                                    | ❌️    |                                      | `ge`                                       | ✅️️              
| `CTRL-F`                                    | ❌️    |                                      | `gg`                                       | ❌️              
| `CTRL-R`                                    | ✅️️    |                                      | `gI`                                       |                 
| `CTRL-U`                                    | ❌️    |                                      | `gj`, `g<Down>`                            | ✅️              
| `c0`                                        |       |                                      | `gk`, `g<Up>`                              | ✅️              
| `cb`                                        | ✅️️    |                                      | `h`, `<BS>`, `CTRL-H`, `<Left>`            | ✅️              
| `cc`                                        | ❌️    |                                      | `iw`                                       | ❌️              
| `ce`                                        | ✅️️    |                                      | `j`, `CTRL-J`, `CTRL-N`, `<Down>`          | ✅️              
| `cG`                                        | ❌️    |                                      | `k`, `CTRL-P`, `<Up>`                      | ✅️              
| `cgg`                                       | ❌️    |                                      | `l`, `<Right>`, `<Space>`                  | ✅️              
| `ch`                                        | ✅️️    |                                      | `R`                                        | ❌️              
| `ciw`                                       | ❌️    |                                      | `S`                                        | ❌️              
| `cj`                                        | ❌️    |                                      | `u`                                        |         
| `ck`                                        | ❌️    |                                      | `V`                                        | ❌️              
| `cw`                                        | ✅️️    |                                      | `v`                                        | ❌️              
| `D`, `d$`                                   | ❌️    |                                      | `w`, `<S-Right>`                           | ✅️️              
| `d0`                                        |       |                                      | `X`                                        |                 
| `db`                                        | ✅️️    |                                      | `Y`                                        |                                        
| `dd`                                        | ❌️    |                                      | `y`                                        |                  
| `de`                                        | ✅️️    |                                      
| `dG`                                        | ❌️    |                                      
| `dgg`                                       | ❌️    |                                      
| `diw`                                       | ❌️    |                                      
| `dj`                                        | ❌️    |                                      
| `dk`                                        | ❌️    |                                      
| `dw`                                        | ❌️    |                                     
| `e`                                         | ✅️️    |                                      
| `G`                                         | ❌️    |                                      
| `g_`                                        | ❌️    |                                        
| `g^`                                        |       |                                      
| `g$`, `g<End>`                              | ❌️    |                                      
| `g0`, `g<Home>`                             |       |                                      
| `ge`                                        | ✅️️    |
| `gg`                                        | ❌️    |
| `gI`                                        | ❌️    |
| `gj`, `g<Down>`                             | ✅️    |
| `gk`, `g<Up>`                               | ✅️    |
| `h`, `<BS>`, `CTRL-H`, `<Left>`             | ✅️    |
| `i`                                         | ❌️    |
| `J`                                         | ❌️    |
| `j`, `CTRL-J`, `CTRL-N`, `<Down>`           | ✅    |
| `k`, `CTRL-P`, `<Up>`                       | ✅    |
| `l`, `<Right>`, `<Space>`                   | ✅    |
| `N`                                         | ✅️    |
| `n`                                         | ✅️    |
| `O`                                         | ❌️    |
| `o`                                         | ❌️    |
| `P`                                         | ❌️    |
| `p`                                         | ❌️    |
| `r`                                         | ❌️    |
| `S`                                         | ❌️    | ️
| `s`, `cl`                                   | ✅️️    |
| `u`                                         | ✅️️    |
| `w`, `<S-Right>`                            | ✅️️    |
| `X`, `dh`                                   | ✅️️    |
| `x`, `<Del>`, `dl`                          | ✅️️    |
| `Y`                                         | ❌️    |
| `yiw`                                       | ❌️    |
| `yy`                                        | ❌️    |

### Commands
| Command | count |
| :---:   | :---: |
| `:q`    |
| `:q!`   |
| `:w`    |            
| `:wq`   |            
| `:x`    |
| `gT`    | ✅️️
| `gt`    | ❌️
| `ZZ`    |

# Feedback

* whether you need a missing move, want to report a bug or ask for a feature, just [open an issue](https://github.com/godbout/kindaVim.theapp/issues/new).

# Acknowledgments and thanks

* [Takayama Fumihiko](https://github.com/tekezo) for [Karabiner-Elements](https://karabiner-elements.pqrs.org), my first experience of Vim moves on macOS. Great option if you need lots of customizations.
* [David Balatero](https://github.com/dbalatero) for [VimMode.spoon](https://github.com/dbalatero/VimMode.spoon), showing there's a way to make this work. Great option if you're looking for free/open source.
* [Sindre Sorhus](https://github.com/sindresorhus) for [LaunchAtLogin](https://github.com/sindresorhus/LaunchAtLogin) and [KeyboardShortcuts](https://github.com/sindresorhus/KeyboardShortcuts), that saved me countless of hours of headaches.
* [Sparkle](https://sparkle-project.org) for the Sofware Updater. this is great shit.
* [Clipy](https://github.com/Clipy) for [Sauce](https://github.com/Clipy/Sauce), a magnificent Swift package to handle Keyboard Layouts headaches.

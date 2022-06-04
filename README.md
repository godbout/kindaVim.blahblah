<div align="center">
    <img src="https://github.com/godbout/kindaVim.theapp/blob/master/assets/icon.png">
    <h1>kindaVim brings Vim moves to macOS Input Fields and UI Elements.</h1>
</div>

![awesome stuff happening in there](https://raw.githubusercontent.com/godbout/kindaVim.theapp/master/assets/gif.gif "hehe")

---

# The Site

[kindavim.app](https://kindavim.app) for all the fancy stuff.

# Why kindaVim

Brain space and energy are limited.
Why learning six hundred thousand new keyboard shortcuts when you can use Vim moves everywhere.
Also macOS is widely inconsistent like sometimes you can go down and up with ctrl+n/ctrl+p but also sometimes not.
Even in Apple's own apps. So jk FTW.

And also it's fucking cool.

# License

kV only requires a license if you use it in the mornings. Yes, it's lazy.
Without a coffee a month (USD$3.28 excl. tax) it'll work hard for you on any afternoon and night, but will fall asleep at dawn. 🌄️ 

# Current Vim Implementation

## Motions

### kV Accessibility Strategy: text manipulation; accurate.

kV detects automatically which Strategy to use, but sometimes you may wish to enforce the Keyboard Strategy even when the text is Accessible.
You can do so by pressing `fn` while doing a move. This is useful when you're in a text input but want to scroll through the UI (scrollbars) rather than the text/caret, or to move from one input to another in some apps with custom UI.

| Normal Mode                                 | count | &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; | Visual Mode | count |
| ---:                                        | :---:           | :---:                                | ---:                                        | :---:       
| `_`                                         | ✅️              |                                      | `_`                                         | ✅️️          
| `,`                                         | ✅️              |                                      | `,`                                         | ✅️          
| `;`                                         | ✅️              |                                      | `;`                                         | ✅️          
| `?`                                         | ✅️              |                                      | `^`                                         |             
| `?<CR>`                                     | ✅️              |                                      | `+`, `<CR>`, `CTRL-M`, `<Enter>`            | ✅️
| `[(`                                        | ❌️              |                                      | `<`                                         | ✅️
| `[(`                                        | ❌️              |                                      | `>`                                         | ✅️
| `[{`                                        | ❌️              |                                      | `$`, `<End>`                                | ✅️️          
| `])`                                        | ❌️              |                                      | `~`                                         |             
| `]}`                                        | ❌️              |                                      | `0`                                         |             
| `{`                                         | ❌️              |                                      | `B`, `<C-Left>`                             | ✅️          
| `}`                                         | ❌️              |                                      | `b`, `<S-Left>`                             | ✅️          
| `/`                                         | ✅️              |                                      | `C`                                         |             
| `/<CR>`                                     | ✅️              |                                      | `c`, `s`                                    |             
| `%`                                         |                 |                                      | `D`                                         |             
| `^`                                         |                 |                                      | `d`, `<Del>`, `x`                           |             
| `+`, `<CR>`, `<CTRL-M>`, `<Enter>`          | ✅️️              |                                      | `E`                                         | ✅️          
| `<<`                                        | ✅️️              |                                      | `e`                                         | ✅️          
| `>>`                                        | ✅️️              |                                      | `F`                                         | ✅️          
| `~`                                         | ✅️              |                                      | `f`                                         | ✅️          
| `$`, `<End>`                                | ✅️              |                                      | `G`                                         | ✅️          
| `0`                                         |                 |                                      | `g_`                                        | ✅️
| `A`                                         | ❌️              |                                      | `g^`                                        |             
| `a`                                         | ❌️              |                                      | `g$`, `g<End>`                              | ✅️️          
| `B`, `<C-Left>`                             | ✅️️              |                                      | `g0`, `g<Home>`                             |             
| `b`, `<S-Left>`                             | ✅️️              |                                      | `gE`                                        | ✅️          
| `C`, `c$`                                   | ❌️              |                                      | `ge`                                        | ✅️          
| `CTRL-B`, `<PageUp>`, `<S-Up>`              |                 |                                      | `gg`                                        | ✅️          
| `CTRL-D`                                    |                 |                                      | `gI`                                        |             
| `CTRL-F`, `<PageDown>`, `<S-Down>`          |                 |                                      | `gj`, `g<Down>`                             | ✅️          
| `CTRL-R`                                    | ✅️              |                                      | `gk`, `g<Up>`                               | ✅️          
| `CTRL-U`                                    |                 |                                      | `gx`                                        |
| `c0`                                        |                 |                                      | `h`, `<BS>`, `CTRL-H`, `<Left>`             | ✅️          
| `caW`                                       | ❌️              |                                      | `iW`                                        | ❌️          
| `caw`                                       | ❌️              |                                      | `iw`                                        | ❌️          
| `cB`                                        | ✅️️              |                                      | `j`, `CTRL-J`, `CTRL-N`, `<Down>`           | ✅️          
| `cb`                                        | ✅️️              |                                      | `k`, `CTRL-P`, `<Up>`                       | ✅️          
| `cc`                                        | ❌️              |                                      | `l`, `<Right>`, `<Space>`                   | ✅️          
| `cE`                                        | ✅️️              |                                      | `o`                                         |             
| `ce`                                        | ✅️️              |                                      | `R`                                         |             
| `cF`                                        | ✅️              |                                      | `S`                                         |             
| `cf`                                        | ✅️              |                                      | `T`                                         | ✅️          
| `ch`, `c<BS>`, `cCTRL-H`, `c<Left>`         | ✅️              |                                      | `t`                                         | ✅️️          
| `cG`                                        | ❌️              |                                      | `u`                                         | 
| `cgg`                                       | ❌️              |                                      | `V`                                         | ❌️          
| `ci'`                                       | ❌️              |                                      | `v`                                         | ❌️          
| `ci"`                                       | ❌️              |                                      | `W`, `<C-Right>`                            | ✅️          
| `ci(`                                       | ❌️              |                                      | `w`, `<S-Right>`                            | ✅️          
| `ci)`                                       | ❌️              |                                      | `X`                                         |             
| `ci[`                                       | ❌️              |                                      | `Y`                                         |             
| `ci]`                                       | ❌️              |                                      | `y`                                         |                 
| `ci{`                                       | ❌️              |                                      
| `ci}`                                       | ❌️              |                                      
| <code>ci`</code>                            | ❌️              |                                      
| `ciB`                                       | ❌️              |                                      
| `cib`                                       | ❌️              |                                      
| `ciW`                                       | ❌️              |                                      
| `ciw`                                       | ❌️              |                                      
| `cj`, `cCTRL-J`, `cCTRL-N`, `c<Down>`       | ❌️              |                                      
| `ck`, `cCTRL-P`, `c<Up>`                    | ❌️              |                                      
| `cT`                                        | ✅️              |                                      
| `ct`                                        | ✅️              |                                      
| `cW`                                        | ❌️              |                                      
| `cw`                                        | ❌️              |                                      
| `D`, `d$`                                   | ❌️              |                                      
| `d0`                                        |                 |                                      
| `daW`                                       | ❌️              |                                      
| `daw`                                       | ❌️              |                                      
| `dB`                                        | ✅️️              |                                      
| `db`                                        | ✅️️              |                                      
| `dd`                                        | ❌️              |
| `dE`                                        | ✅️️             
| `de`                                        | ✅️️             
| `dF`                                        | ✅️             
| `df`                                        | ✅️             
| `dG`                                        | ❌️             
| `dgg`                                       | ❌️            
| `diW`                                       | ❌️            
| `diw`                                       | ❌️            
| `dj`, `dCTRL-J`, `dCTRL-N`, `d<Down>`       | ❌️             
| `dk`, `dCTRL-P`, `d<Up>`                    | ❌️             
| `dT`                                        | ✅️             
| `dt`                                        | ✅️             
| `dW`                                        | ✅️             
| `dw`                                        | ✅️             
| `E`                                         | ✅️️                 
| `e`                                         | ✅️️                 
| `F`                                         | ✅️                 
| `f`                                         | ✅️                 
| `G`                                         | ✅️                 
| `g_`                                        | ✅️     
| `g^`                                        | 
| `g$` , `g<End>`                             | ✅️                 
| `g0`, `g<Home>`                             |                  
| `gE`                                        | ✅️️                 
| `ge`                                        | ✅️️                 
| `gg`                                        | ✅️                 
| `gI`                                        | ❌️              
| `gj`, `g<Down>`                             | ✅️               
| `gk`, `g<Up>`                               | ✅️                 
| `gx`                                        |
| `H`                                         | ✅️
| `h`, `<BS>`, `CTRL-H`, `<Left>`             | ✅️                 
| `I`                                         | ❌️                 
| `i`                                         | ❌️               
| `J`                                         | ❌                 
| `j`, `CTRL-J`, `CTRL-N`, `<Down>`           | ✅️                 
| `k`, `CTRL-P`, `<Up>`                       | ✅️                 
| `L`                                         | ✅️
| `l`, `<Right>`, `<Space>`                   | ✅️
| `M`                                         |
| `N`                                         | ✅️               
| `n`                                         | ✅️               
| `O`                                         | ❌️                 
| `o`                                         | ❌️                 
| `P`                                         | ❌️                 
| `p`                                         | ❌️                 
| `r`                                         | ✅️                 
| `S`                                         | ❌️                  
| `s`, `cl`, `c<Right>`, `c<Space>`           | ✅️                  
| `T`                                         | ✅️                 
| `t`                                         | ✅️                 
| `u`                                         | ✅️                 
| `W`, `<C-Right>`                            | ✅️️                 
| `w`, `<S-Right>`                            | ✅️️                 
| `X`, `dh`, `d<BS>`, `dCTRL-H`, `d<Left>`    | ✅️                 
| `x`, `<Del>`, `dl`, `d<Right>`, `d<Space>`  | ✅️                  
| `Y`                                         | ✅️                  
| `yF`                                        | ✅️                 
| `yf`                                        | ✅️                 
| `yi'`                                       | ❌️                 
| `yi"`                                       | ❌️                 
| `yi(`                                       | ❌️                 
| `yi)`                                       | ❌️                 
| `yi[`                                       | ❌️                 
| `yi]`                                       | ❌️                 
| `yi{`                                       | ❌️                 
| `yi}`                                       | ❌️                 
|  <code>yi`</code>                           | ❌️ 
| `yiw`                                       | ❌️ 
| `yT`                                        | ✅️ 
| `yt`                                        | ✅️ 
| `yy`                                        | ✅️ 
| `z-`                                        | ❌️                 
| `z.`                                        | ❌️                 
| `zb`                                        | ❌️                 
| `z<CR>`                                     | ❌️                 
| `zt`                                        | ❌️                 
| `zz`                                        | ❌️                 


### kV Keyboard Strategy: keyboard remapping; less accurate.

| Normal Mode                                 | count | &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; | Visual Mode  | count | 
| ---:                                        | :---: | :---:                                | ---:                                       | :---:
| `_`                                         | ❌️    |                                      | `_`                                        | ❌️              
| `?`                                         | ❌️    |                                      | `^`                                        |                 
| `?<CR>`                                     | ❌️    |                                      | `+`, `<CR>`, `CTRL-M`, `<Enter>`           | ✅️              
| `/`                                         | ❌️    |                                      | `$`, `<End>`                               | ❌️              
| `/<CR>`                                     | ❌️    |                                      | `0`                                        |                 
| `^`                                         |       |                                      | `b`, `<S-Left>`                            | ✅️️              
| `+`, `<CR>`, `CTRL-M`, `<Enter>`            | ✅️️    |                                      | `C`                                        |                 
| `<<`                                        | ✅️️    |                                      | `c`, `s`                                   |                 
| `>>`                                        | ✅️️    |                                      | `D`                                        |                 
| `$`, `<End>`                                | ❌️    |                                      | `d`, `<Del>`, `x`                          |                 
| `0`                                         |       |                                      | `e`                                        | ✅️️              
| `A`                                         | ❌️    |                                      | `G`                                        | ❌️              
| `a`                                         | ❌️    |                                      | `g^`                                       |                 
| `b`, `<S-Left>`                             | ✅️️    |                                      | `g_`                                       | ❌️
| `C`, `c$`                                   | ❌️    |                                      | `g$`, `g<End>`                             | ❌️              
| `CTRL-B`, `<PageUp>`, `<S-Up>`              | ❌️    |                                      | `g0`, `g<Home>`                            |                 
| `CTRL-D`                                    | ❌️    |                                      | `ge`                                       | ✅️️              
| `CTRL-F`, `<PageDown>`, `<S-Down>`          | ❌️    |                                      | `gg`                                       | ❌️              
| `CTRL-R`                                    | ✅️️    |                                      | `gI`                                       |                 
| `CTRL-U`                                    | ❌️    |                                      | `gj`, `g<Down>`                            | ✅️              
| `c0`                                        |       |                                      | `gk`, `g<Up>`                              | ✅️              
| `cb`                                        | ✅️️    |                                      | `h`, `<BS>`, `CTRL-H`, `<Left>`            | ✅️              
| `cc`                                        | ❌️    |                                      | `iw`                                       | ❌️              
| `ce`                                        | ✅️️    |                                      | `j`, `CTRL-J`, `CTRL-N`, `<Down>`          | ✅️              
| `cG`                                        | ❌️    |                                      | `k`, `CTRL-P`, `<Up>`                      | ✅️              
| `cgg`                                       | ❌️    |                                      | `l`, `<Right>`, `<Space>`                  | ✅️              
| `ch`, `c<BS>`, `cCTRL-H`, `c<Left>`         | ✅️️    |                                      | `R`                                        | ❌️              
| `ciw`                                       | ❌️    |                                      | `S`                                        | ❌️              
| `cj`, `cCTRL-J`, `cCTRL-N`, `c<Down>`       | ❌️    |                                      | `u`                                        |         
| `ck`, `cCTRL-P`, `c<Up>`                    | ❌️    |                                      | `V`                                        | ❌️              
| `cw`                                        | ✅️️    |                                      | `v`                                        | ❌️              
| `D`, `d$`                                   | ❌️    |                                      | `w`, `<S-Right>`                           | ✅️️              
| `d0`                                        |       |                                      | `X`                                        |                 
| `db`                                        | ✅️️    |                                      | `Y`                                        |                                        
| `dd`                                        | ❌️    |                                      | `y`                                        |                  
| `de`                                        | ✅️️    |                                      
| `dG`                                        | ❌️    |                                      
| `dgg`                                       | ❌️    |                                      
| `diw`                                       | ❌️    |                                      
| `dj`, `dCTRL-J`, `dCTRL-N`, `d<Down>`       | ❌️    |                                      
| `dk`, `dCTRL-P`, `d<Up>`                    | ❌️    |                                      
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
| `s`, `cl`, `c<Right>`, `c<Space>`           | ✅️️    |
| `u`                                         | ✅️️    |
| `w`, `<S-Right>`                            | ✅️️    |
| `X`, `dh`, `d<BS>`, `dCTRL-H`, `d<Left>`    | ✅️️    |
| `x`, `<Del>`, `dl`, `d<Right>`, `d<Space>`  | ✅️️    |
| `Y`                                         | ❌️    |
| `yiw`                                       | ❌️    |
| `yy`                                        | ❌️    |
| `zz`                                        | ❌️    |

## Commands
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

# AccessibilityStrategyTestApp

Testing the Vim moves when using the macOS Accessibility requires building an external app. This app, as well as the tests of each move in the context of the Accessibility Strategy, are open source and available here: [AccessibilityStrategyTestApp](https://github.com/godbout/AccessibilityStrategyTestApp)

# Acknowledgments

* [Takayama Fumihiko](https://github.com/tekezo) for [Karabiner-Elements](https://karabiner-elements.pqrs.org), my first experience of Vim moves on macOS. Great option if you need lots of customizations.
* [David Balatero](https://github.com/dbalatero) for [VimMode.spoon](https://github.com/dbalatero/VimMode.spoon), showing there's a way to make this work. Great option if you're looking for free/open source.
* [Sindre Sorhus](https://github.com/sindresorhus) for [LaunchAtLogin](https://github.com/sindresorhus/LaunchAtLogin) and [KeyboardShortcuts](https://github.com/sindresorhus/KeyboardShortcuts), that saved me countless of hours of headaches.
* [Sparkle](https://sparkle-project.org) for the Sofware Updater. this is great shit.
* [Clipy](https://github.com/Clipy) for [Sauce](https://github.com/Clipy/Sauce), a magnificent Swift package to handle Keyboard Layouts headaches.

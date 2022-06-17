# Accessibility Strategy

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
| `caB`, `ca{`, `ca}`                         | ❌️              |                                      | `iW`                                        | ❌️          
| `caW`                                       | ❌️              |                                      | `iw`                                        | ❌️          
| `caw`                                       | ❌️              |                                      | `j`, `CTRL-J`, `CTRL-N`, `<Down>`           | ✅️          
| `cB`                                        | ✅️️              |                                      | `k`, `CTRL-P`, `<Up>`                       | ✅️          
| `cb`                                        | ✅️️              |                                      | `l`, `<Right>`, `<Space>`                   | ✅️          
| `cc`                                        | ❌️              |                                      | `o`                                         |             
| `cE`                                        | ✅️️              |                                      | `R`                                         |             
| `ce`                                        | ✅️️              |                                      | `S`                                         |             
| `cF`                                        | ✅️              |                                      | `T`                                         | ✅️          
| `cf`                                        | ✅️              |                                      | `t`                                         | ✅️️          
| `ch`, `c<BS>`, `cCTRL-H`, `c<Left>`         | ✅️              |                                      | `u`                                         | 
| `cG`                                        | ❌️              |                                      | `V`                                         | ❌️          
| `cgg`                                       | ❌️              |                                      | `v`                                         | ❌️          
| `ci'`                                       | ❌️              |                                      | `W`, `<C-Right>`                            | ✅️          
| `ci"`                                       | ❌️              |                                      | `w`, `<S-Right>`                            | ✅️          
| `ci[`                                       | ❌️              |                                      | `X`                                         |             
| `ci]`                                       | ❌️              |                                      | `Y`                                         |             
| <code>ci`</code>                            | ❌️              |                                      | `y`                                         |                 
| `ciB`, `ci{`, `ci}`                         | ❌️              |                                      
| `cib`, `ci(`, `ci)`                         | ❌️              |                                      
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

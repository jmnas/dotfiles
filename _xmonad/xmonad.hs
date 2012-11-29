import XMonad

main = do
  xmonad $ defaultConfig
    { terminal = myTerminal
    , modMask = myModMask
    , borderWidth = myBorderWidth
    , normalBorderColor = "#053aab"                   
    , focusedBorderColor = "#ff0000"                          
    }                           
    
myTerminal = "xterm"
myBorderWidth = 3
myModMask = mod1Mask

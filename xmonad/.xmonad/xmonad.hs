import System.IO

import Graphics.X11.ExtraTypes.XF86

import XMonad hiding (Tall)

import XMonad.Hooks.ManageDocks
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.DynamicLog

import XMonad.Util.EZConfig

import XMonad.Layout.HintedGrid
import XMonad.Layout.Gaps

myLayoutHook = gaps [(U,10), (R,10), (D,10), (L,10)] $ Grid False ||| Full

main = do
  xmonad $ ewmh defaultConfig
         { manageHook         = manageDocks <+> manageHook defaultConfig
         , layoutHook         = myLayoutHook
         , handleEventHook    = handleEventHook def <+> fullscreenEventHook  <+> docksEventHook
         , startupHook        = ewmhDesktopsStartup
         , modMask            = mod4Mask
         , terminal           = "st"
         , borderWidth        = 3
         , normalBorderColor  = "#e1e1e2"
         , focusedBorderColor = "#149bda"
         }
         `additionalKeys`
         [ ((0,        xF86XK_AudioLowerVolume ), spawn "pactl set-sink-volume 0 -5%")
         , ((0,        xF86XK_AudioRaiseVolume ), spawn "pactl set-sink-volume 0 +5%")
         , ((0,        xF86XK_AudioMute        ), spawn "pactl set-sink-mute 0 toggle")
         , ((0,        xF86XK_MonBrightnessUp  ), spawn "light -A 2")
         , ((0,        xF86XK_MonBrightnessDown), spawn "light -U 2")
         , ((mod4Mask, xK_b                    ), sendMessage ToggleStruts)
         ]

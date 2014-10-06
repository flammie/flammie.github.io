# Setting up brightness and audio keys for i3

I3 is a really neat and fast tiling window manager for linux. Tiling means
that it doesn't let your windows overlap, basically. There's nothing new in
this concept, it was common in Windowses before 3 or something like that I
suppose, but it works well for lot of my work flow and is better than huge
desktop environments for my lowest end disposable laptops.

Ok, so it requires you to do everything yourself, the default config gives
just few shortcut keys and that's all. A lot more can be found on the
internet, but one thing that google was not able to find easily is how to
get keyboard's audio and brightness keys to work. Some old scripts sure, but
most of them required finding out key codes, scripts messing with `/sys` and
so forth. It's not in fact that hard. The keys have symbolic names like any
others: `XF86MonBrightness{Up,Down}, XF86Audio{Raise,Lower}Volume` and
`XF86AudioMute`. With this, tweaking `~/.i3/config` is trivial:

    bindsym XF86MonBrightnessUp exec xbacklight -inc 7
    bindsym XF86MonBrightnessDown exec xbacklight -dec 7
    bindsym XF86AudioMute exec amixer set Master toggle -q
    bindsym XF86AudioLowerVolume exec amixer set Master 1%- unmute -q
    bindsym XF86AudioRaiseVolume exec amixer set Master 1%+ unmute -q

For the rest of the juicy bits, check for my
[dotfiles](http://github.com/flammie/dotfiles/)

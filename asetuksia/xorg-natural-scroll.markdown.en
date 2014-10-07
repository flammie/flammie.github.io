# Natural scrolling in X without Desktop Environment

At the moment most laptops still have trackpads, and I'm too lazy to carry a
mouse around so I'm stuck to using them despite them being rather inaccurate
and hard to use. Few big manufacturers in their wisdom have decided that
two-finger scrolling and invert scroll are good defaults, so in order to
avoid switching scrolling style on every computer that's what I set up on my own
laptops now. Using Gnome or similar this is often as easy as going to settings
through GUI, but with LXDE or without anything you need to use synclient:

    $ synclient 
    Parameter settings:
        LeftEdge                = 163
        RightEdge               = 3908
        TopEdge                 = 134
        BottomEdge              = 2339
        [...]
        VertScrollDelta         = 95
        [...]
        VertTwoFingerScroll     = 1

to find some settings that might be relevvant. To fix them, use just:

    $ synclient VertScrollDelta=-95

and it should work immediately. To make it stick you probably have to
get it into Xorg.conf, yeah, that file doesn't exist anymore, but you
can create it and somehow come up with correct structure...

If any of the above doesn't work it may be that the touchpad doesn't get
recognised as synaptics at all. See `xinput`, and `Xorg.log`. update
synaptics driver, kernel etc. It usually has helped, though some
trackpads are just too rubbish for that.

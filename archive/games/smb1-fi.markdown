---
layout: default
title: Flammie.dyndns.org archive, games, SMB1 Finnish
---


# Finnish translation of Super Mario Brothers 1 (NES)

Yes, this is undoubtedly my first console translation, dating back to around
2000 or so. As most of you are aware, this game contains very little text to
translate, so it might be good place to start. However small amount of text
does always pose the problem, that the text in the game is constant sized, so
if message says "GAME OVER", you must translate it using 9 characters and not
more. And of course Finnish language does not bend to such trickery. The
solution I used back then was quite an idea, the translation is not in written
Finnish, rather, it's written in spoken Finnish, and that turned out to be
quite humorous.

But enough with the ranting, the actual translation process was very
straight forward. The text data was encoded with following table (which is very
common in Nintendo's own products):

```
24=
28=-
2B=!
00=0
01=1
02=2
...
10=G
11=H
12=I
13=J
...
23=Z
```

Using that key with any hex editor you can quickly find the two text areas
in the game rom at 0x755h and 0xD57h. (If you wonder about the last message,
it actually shows up when you have truly finished the game, that is, played it
through half a dozen successive times in row, can't remember the exact value,
but it's somewhere around there.)

Then you could hack the graphics as well, those are stored near the end of
the rom. The only hack I did was changing character W to Ä.

Anyways, the result is here: ~~Super Mario Bros. 1 in Finnish~~ (not archived).
It's copyrighted to Nintendo, so you know your rights anyways, no?
I do know mine, but if someone has a problem with this catastrophic
unauthorized distribution of free translation, then, by all means, do
~~contact me via email~~.

Some screenshots (also not archived):
<img alt="Super Mario Bros. 1 Finnish title screen"
 src="/images/smb1fi-title.png">
<img alt="Super Mario Bros. 1 Finnish castle dialogue"
 src="/images/smb1fi-castle.png">



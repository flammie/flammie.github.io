---
layout: default
title: Flammie.dyndns.org, games, Zelda1 Finnish translation

# Zeldan legenda, Finnish translation of The legend of Zelda 1 (NES)

The legend of zelda was really fun project to translate, it doesn't contain
much text, but the english translation is a bit engrish, and space has some
limitations that seem not to bend after all. Also the text encoding is fun, it
seems like they have tried to save space, but they ended up declaring almost
full range of one-byte codes of which 50% ends unused and cannot even be changed
for anything useful.

The beginning of this translation was simple as usual, I just took the
most typical mapping table (0x00=0,0x01=1,...,0x0A=A,...,0x23=Z), after that one
could clearly see the rest of meaningful symbols(0x24= , 0x28=,,0x2C=.). But,
inserting this table did not result in full text to appear, instead it had
lots of weird quirks which at start seemed to appear at random: "It is too
dangerous to G????Alone, here take thi????". At first I just disregarded these
problems as some miscellaneous control codes, perhaps they were muting the
bleeping sound of printing characters(not).

After hacking my way through these and tweaking the overlong Finnish texts
in these fixed size strings (at least there's no obvious pointer table to be
seen in this rom). I soon bumped in to couple of serious issues with the
dialogue text. Firstly some of the newlines had disappeared and text printed
over the cave walls and outside the screen. Secondly there were some extraneous
characters at end of each line of text. After some careful hacking and tweaking
I finally located source of ghost characters and resolved problem with missing
newline character at one hit. The control codes I noted earlier, they were
actually part of this rom's obscene encoding scheme. Firstly we have the normal
characters from 0x00 to 0x2F we found out earlier, this is simple. Then we
have a duplicated set of characters from 0x80 to 0xAF (the same characters with
0x80 bit masked for technically oriented), which are used to print both the
mentioned character, and a newline after it. And like that wouldn't have been
enough, we have third set of characters form 0xC0 to 0xEF represnting the same
characters at the end of message. Now with these additions I could do most of
the remaining translation and additions.

So now I had almost done the translation, only needed to add the Finnish
'ä' and 'ö' somewhere... Looking the translation table we see that there are
3 different space characters used around the rom (0x24 to 0x27), so it seems
like an ideal job to steal couple of these for our purposes, right? Nope, not
only are these tiles used to render different colour spaces in different texts,
but also the same tiles are used to render backgrounds in the overworld map...
now that's some spacesaving in vein by programmers. Finally I ended up replacing
apostrophe and quotation mark with ä and ö, since neither of those is used in
Finnish translation, and quotation mark is nowhere in English version either.

Now there's still one mystery unsolved for the translation, the intro screen
which tells the story, it has some color codings specified somewhere but I
haven't located where and how, so they remain distorted as you can see from the
screenshot below.

Also few things to mention about translation, the terrific engrish "Grumble,
grumble" that supposedly was meant to resemble grumbling stomache was replaced
by sounds of hungry person waiting to eat. In the title screen there's inventory
item called Magic Key separated in two lines, which cannot be logically
translated because the size of second row is exactly three letters, and no
translated expression would fit in that. Thirdly I almost left my all time
favorite game quote untranslated, because of its sound if not more. However,
"Dodongo dislikes smoke" is translated in current version anyways :').

Anyways, the result is here: ~~Zeldan legenda~~ (not archived).
It's copyrighted to Nintendo, so you know your rights anyways, no?
I do know mine, but if someone has a problem with this catastrophic
unauthorized distribution of free translation, then, by all means, do
~~contact me via email~~.

Some screenshots (the translation flaws demonstrated in two last ones)
(Not archived):

<img alt="Zeldan legenda title screen"
 src="/images/zelda1fi-title.png">
<img alt="Inventory of Zeldan legenda"
 src="/images/zelda1fi-inventory.png">
<img alt="story of Zeldan Legenda"
 src="/images/zelda1fi-story.png">
<img alt="items of Zeldan Legenda"
 src="/images/zelda1fi-items.png">

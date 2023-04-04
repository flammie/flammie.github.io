# Flammie's list of TeX things

Things I need to google up every time.

## Table corner split

I usually make tables where columns and lines have headings and for that to make
sense the top left corner cell needs to be the heading of the headings for both
lines and columns, this is one way to implement it:

```tex
\usepackage{diagbox}
...
\diagbox[height=7ex,width=8ex]{PoS}{Errors} & \bf 1 & \bf 2 & \bf \\
\hline
\bf Noun & 1 & 2 & 4 \\
\bf Verb & 5 & 6 & 7 \\
\bf Adj & 9 & 8 & 3 \\
\hline
```

Where diagbox is naturally from package diagbox.

## Different multicols

Multicolumns in tables are very common but tricky with a ton of different
packages, here are few:


```tex
\bf PoS & \multicolumn{4}{|c|}{\bf Things} & \multicolumn{4}{|c|}{\bf Stuffs} \\
& 1 & 2 & 3 & 4 & 1 & 2 & 3 & 4 \\
```

## "Pretty" hlines

According to TeX linters hline is ugly and you need the different lines from the
booktabs package:

```tex
\usepackage{booktabs}
...
\toprule
Corner & Heading \\
\midrule
Heading & Content \\
Heading & Content \\
\bottomrule
```

I personally don't see the difference but some of your reviewers might if you
are writing to an academic conference so it's probably a good habit to have. An
example from twitter:

<blockquote class="twitter-tweet"><p lang="en" dir="ltr">I think Tufte is a hack
and a dilletante but he&#39;s right about one thing: tables don&#39;t need
vertical lines, and you should use the absolute minimum number of horizontal
lines too. There is no conceivable reason to have \hline after each
row.</p>&mdash; I&#39;ll never use the Confederate word (@wellformedness) <a
href="https://twitter.com/wellformedness/status/1358515118078889987?ref_src=twsrc%5Etfw">February
7, 2021</a></blockquote> <script async
src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

Followed by:

<blockquote class="twitter-tweet"><p lang="en" dir="ltr">There&#39;s no
conceivable reason to use \hline ever, booktabs 4 life ;)</p>&mdash; Marcel
Bollmann (@mmbollmann) <a
href="https://twitter.com/mmbollmann/status/1358535267024568324?ref_src=twsrc%5Etfw">February
7, 2021</a></blockquote> <script async
src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

## Optional stuff / draft and cameraready versions

Tex has lots of programming languagey stuff in it, but one of the most effective
tricks is to use simple boolean variables to switch parts on and off
(anonymisation, todos). The commands relevant are `\newif` and then `\ifX`,
`\Xfalse` or `\Xtrue` and to end if block `\fi`:

```tex
\newif\iffinal
\finalfalse

\iffinal
Author identities are XYZ
\fi

\iffinal
Acknowledgments are not allowed in non-final version either
\fi
```

If you work on academic stuff with double-blind reviews this is really useful,
you can write final version whenever you want and hide it from submitted
version and just switch it on by changing `\finalfalse` to `\finaltrue` after
acceptance. At least I find it less anxious when I can write acknowledgments
and project URLs and names when I feel like it.

## Some non-ASCII hacks for problematic publishers

By default you will want to use XeLaTeX or LuaLaTeX but if some publications
really really feel strongly about using outdated systems you may not be able to
typeset linguistics of non-English very easily. This trick works for ŧ and Ŧ
that are usually impossible:

```tex
\newcommand{\samit}{\mbox{t\hspace{-.35em}-}} %\samit{}
\newcommand{\samiT}{\mbox{T\hspace{-.5em}-}} %\samit{}
```

not sure whose the original trick is, I copied it from source codes of our North
Sámi articles in the past. For many other letters you can of course use the old
TeX codes like `\'{a}` or `\H{a}`, I think this might should work with `\tj` but
I have no experiences of it actually working so.


Sometimes when conference or publication has their own style that requires use
of ancient tex versions you can possibly work around them by commenting out
`\usepackage{times}` and using fontspec with mainfont *Times New Roman* instead,
in most cases the difference will be unnoticeable to me, however, some
conference organisers or their reviewers will be eager to point out that this is
not exactly the same font as in template and your paper will be rejected.
Chances are you didn't really want to publish in a conference or series that
doesn't support for using more than European alphabet anyways.

```tex
%\usepackage{times}
\usepackage{fontspec}
\setmainfont{Times New Roman}
\usepackage{url}
\usepackage{hyperref}
\usepackage{latexsym}
```

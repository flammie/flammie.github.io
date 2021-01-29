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
are writing to an academic conference so it's probably a good habit to have.

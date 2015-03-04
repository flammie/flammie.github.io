# Splitting (parallel) text (corpus) into specific lines

Splitting text files into pieces that contain neatly equal amounts of lines
using bash and standard linux tools is surprisingly not as easy as it might.
This is very common need when conducting scientific experiments with your text
properly: you need partitions of text for training, development, and testing,
and afterwards, validation. One would easily think that the tool `split` is
already up to task:

    $ man split

    SPLIT(1)                                            User Commands                                           SPLIT(1)

    NAME
           split - split a file into pieces

    SYNOPSIS
           split [OPTION]... [INPUT [PREFIX]]

    DESCRIPTION
           Output  fixed-size pieces of INPUT to PREFIXaa, PREFIXab, ...; default size is 1000 lines, and default PREFIX
           is 'x'.  With no INPUT, or when INPUT is -, read standard input.

           Mandatory arguments to long options are mandatory for short options too.

    [...]
           -C, --line-bytes=SIZE
                  put at most SIZE bytes of lines per output file

           -l, --lines=NUMBER
                  put NUMBER lines per output file

           -n, --number=CHUNKS
                  generate CHUNKS output files; see explanation below

           The SIZE argument is an integer and optional unit (example: 10K is 10*1024).  Units are K,M,G,T,P,E,Z,Y (pow‐
           ers of 1024) or KB,MB,... (powers of 1000).

           CHUNKS  may  be:  N        split  into  N  files based on size of input K/N     output Kth of N to stdout l/N
           split into N files without splitting lines l/K/N   output Kth of N to  stdout  without  splitting  lines  r/N
           like 'l' but use round robin distribution r/K/N   likewise but only output Kth of N to stdout

Plenty of ways to get splits aligned at line boundaries, select line amounts or
specified number of parts per file, right? Here's the first attempt to generate
10 parts, split at line boundaries: `split -n l/10`. The slight problem with
this is that the files it produces are not evenly sized by line count; here's
an example:

    $ split -n l/10 europarl-v7.fi-en.en.text en
    $ wc -l ena*
       180863 enaa
       183696 enab
       180564 enac
       181954 enad
       183274 enae
       184899 enaf
       198800 enag
       188146 enah
       203041 enai
       193871 enaj
      1879108 yhteensä

Depending on what you do it's not a problem. Imagine now you're working on
machine translation. What would happen if we split another aligned corpus with
same parameters, will the files still match? Empirical testing says yes, but I
am not sure this is guaranteed. And what if we just do want or trust in our
evaluations that each file is 1/10th of the lines. So we'd want to calculate
the 1/10th of the lines count. There are couple of ways of counting in shell,
one of the traditional approaches is bc:

    echo 1879108/10 | bc
    187910

To integrate this into something real world, we just get wc -l from a
redirected file (to avoid getting filename in output), and add /10 at the end
of the line with e.g. sed. This is fed to -l parameter of split, like so:

    split -l `wc -l < text | sed -e 's/$/\/10/'

Ok, since it doesn't divide evenly you'll have last modulo 10 lines in one
stray file. This is, however, not as dangerous to your experimental results
as uneven file lengths, mismatching lines, or whatever horrors may've happened
in the way.

_This writing was inspired by my work project_
[abumatran](http://abumatran.eu), _the scripts related are part of my_
[autotools moses github
project](https://github.com/flammie/autostuff-moses-smt).

<!-- vim: set ft=markdown-->

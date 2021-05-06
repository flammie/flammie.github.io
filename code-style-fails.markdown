# Flammie on coding styles

*NB:* Code xamples on this page may not work, since they are not tested, I just
copy pasted and simplified them or pulled them out of my hat when I've seen such
things in the wild...

On this page I collect some misguided advice that people consider good practices
in various programming languages, but that only makes code unreadable and
intents unclear.  There's a ton of guides on coding styles that deal with things
like spaces and tabs, indentation schemes and aligning stuff, but that's just
minor estetics I won't talk about here; pick one and be systematic is all. What
I will talk here is some harmful advice that is presented as if it was about
coding style or worse yet, better style. The coding style advice that tells you
to remove unnecessary parentheses or whatnot, when it is obvious that the
parentheses make it easier to read the intention of the programmer.

## Avoid including too many headers (C++)

This is one of my pet peeves with especially *professional* programmers and C++
experts. The code somehow becomes more elegant if you don't declare all the
stuff you use because of some hidden knowledge that *everyone knows obviously*.
This is passed as a good style in many guides. As an example saying stuff like:

```
#include <string>
#include <vector>
#include <iostream>
#include <flufferbuffsformatter.hpp>

const std::string&
formatAndPrintWonkyVector(const std::vector<std::string> wonks);
```

is considered bad style, because *everyone knows* that *flufferbuffsformatter*
must include strings and vectors already and probably everyone knows that it is
*using namespace std* so no point in repeating them, right?

```
#include <flufferbuffsformatter.hpp>

const string&
formatAndPrintWonkyVector(const vector<string>& wonks);

```

This kind of BS code very common with C++ programmers, and many style guides
prefer this, but it is just making code less understandable and readable for no
reason. If you use vectors you should include vectors, that the compilers are
really bad in c++ is no excuse for writing unreadable code like that.

One of the funny things is that languages like Java, which people generally like
to hate, with their IDEs and whatnont, do actually do the right thing and
require importing or such the exact stuff you use in the code unit you use them.

## Mangle logic to optimise!

This happens in all languages and with all kinds of mad things, usually when
programmers learn cool tricks and stuff like yeah if statements are too slow
can't use them anymore in the code.

### Replace if-structures with boolean logic

One popular exanple is *anti-if* movement especially in bash scripting. E.g.

```
if fgrep badness datafile ; then
    echo datoissa virhe
    exit 2
else
    echo everything work as expected
fi
```

this is way too readable, if you are a cool hacker and want your bash script to
run in 0.00000001 second instead of that slow 0.00000002 seconds above, you must
write:

```
fgrep badness datafile || echo datoissa virhe; exit 2 && echo everything works \
    as expected
```

Because now it doesn't fit into window on 80 character cell terminal screen
anymore and the logic is frankly speaking unpossible to follow and you will flip
it every other time you write, much better more goodness.

It might sound like I'm inventing strawmen and being facetious, but this is a
real thing: https://www.youtube.com/watch?v=p0KKBmfiVl0 ... *elegant* he calls
it to avoid ifs.

### Optimise by combining irrelevant conditions

Another form of optimising logic is very common with c and c++ programmers, I
think this is based on the infamous DRY rule *don't repeat yourself*. If you are
a nice person who likes writing usable error messages, you probably need to do
something like so:

```
if (argc < 3) {
    printf("This command needs three arguments: input output blah\n");
    exit(1);
} else if (atoi(argv[2]) < 0) {
    printf("blah must be a number larger than 0\n");
} else if (fopen(argv[1]) == NULL) {
    printf("could not open %s for reading", argv[1]);
}
```
and so on and so forth, a *professional* programmer must optimise this into:
```
if ((argc < 3) || (atoi(argv[2]) < 0) || (fopen(argv[1]) == NULL) || ...) {
    printf("There was like, some error in like paramters or something! "
    "Exiting!");
    exit(2);
}
```
The sad part is, you see this logic in real-world programs all the time, all
just because some really bad style advice passed as a best programming practice.

### Drop unnecessary explicit logic

This one's inspired by one python linter, that keeps saying that it is better
style to hide your logic, because it works anyways. This is a common problem in
python and pythonic style, prefering all sorts of conversions to booleans and
iterators that just happen to work, because *everybody knows* that a file object
converted to boolean is just false when it's errored and the iterator is of
course line iterator... But the if logic, here's an example:

```
if a > 3:
  print("We have enough a")
  return a
else:
  print("We need more a")
```

This is bad style for python, and the suggested correction is:

```
if a > 3:
  print("We have enough a")
  return a
print("We need more a")
```

because it's less lines I guess and else is deemed unnecessary as return ensures
we don't go there. The problem is that the logic is hidden behind clever hacks
again, it's unreadable and confusing, and preferred by pylint.


# Flammie on C++

C++ is one of the worst programming languages that gets widely used. I will
collect here some personal experiences, however, there are very well known
public listings on the same topic just as well, including:

* [C++ FQA](https://yosefk.com/c++fqa/)
* [C++ criticism on
   wikipedia!](https://en.wikipedia.org/wiki/Criticism_of_C%2B%2B)
* <https://apenwarr.ca/log/20100718>
* etc...

One of the biggest problems I have with C++ is that it seems to be designed to
keep C++ experts employed and well-paid, anything that is "modern" or "elegant"
C++ is purposedly over complicated, changes often enough that non-expert cannot
keep track. Elegant C++ is often such that you are supposed to know a lot of
behind the scenes things, and therefore any code that is explicitly readable
and understandable without intimate knowledge of standard libraries,
is considered bad.

I will list on this page things that annoy me as I see them, whenever I have to
deal with c++ again. Since I work with natural language processing, it is no
surprise that [String handling](#string_handling), a notoriously impossible task
in C++, comes first. Incidentally, just few days after writing this I found
someone else's account on same problem: [C++: the cobol of
90's](http://web.mit.edu/simsong/www/ugh.pdf#page=238) [*PDF* unfortunately].

## String handling

Strings are one of the worst things in C++. You either have just byte arrays
inherited from c (let's not even talk about the horrors of `wchar_t` etc.) which
are semi-passable, or an absurdly complicated data type of `std::string`, which
also doesn't support unicode or anything like that but also lacks any string
handling functions that you'd expect.

### String type itself

If you ever seen an error message relating to strings you know why it's horror,
as we all know, `std::string` is actually `std::basic_string<char>` which is in
turn `std::basic_string<char, std::char_traits<char>, std::allocator<char> >`!
When your basic type does not fit into 80 character line you know you're in for
a treat, of well-designed basic type with no bloat whatsoever.

Yes the huge failure that is `wchar_t` in C has been inherited and compounded to
c++ as wstring, that is `std::basic_string<wchar_t std::char_traits<wchar_t>
std::allocator<wchar_t>>` between friends. Like `wchar_t` it doesn't guarantee
any usable unicode or encoding support, works if whenever between oses.

Yes, we have even more string types for different libraries, e.g. for libxml a
XML string type, GLib has Glib string type, and ICU has probably few different
string types. Because C++ is well designed, you probably have automatic implicit
conversions from integers and null pointers to all this string types back and
front, but converting an XML string into C++ standard string requires 10 lines
of code, most of which have like `blubberfubbler_cast<std::string>() !==
nullptr` or whatnot... and this design is considered good.

Is that all with the string types? No it's not, with *modern* C++ we also get
`string_view` for example.

### Unicode?

No. C++ doesn't really support anything unicode in any string types. The wchar
mess is inherited from C but also new stuff added is all bad. Like some utf-16
and utf-32 strings that hopefully no one will use (utf-32 might be good option
for some cases in the future but it is not common enough yet).

### Replace all substrings

In any reasonable programming language, something as common as replacing all
substrings within a string should be most basic supported operation. No such a
thing in C++. There is a `replace` in C++ string, but as you might guess it only
operators on byte indices or iterators. Very principled. And there is a `find`
to find one occurrence. So just like smoosh those two in a complicated loop to
maybe make it work.

Let's compare:

```python
s = "stupid filename with spaces.docx"
s.replace(" ", "_")
```

with:

```C++
auto s = std::string("stupid filename with spaces.docx");
auto p = s.find(" ");
while (p != std::string::npos) {
    s.replace(p, 1, "_");
    p = s.find(" ", p);
}
```

not too bad actually. I know the example is single character so there are few
magic shortcuts one can use that totally break if there is two characters so
just assume it was to replace double space with single or something.

### Iterators and indices

Yeah so C++ altogether is a horrible mishmash of weird pointers, iterators and
like byte count index kind of things, but nowhere is it more obvious than when
you have to deal with strings member functions and iterating strings and using
algorithms to deal with strings. A lot of time of course you don't have to care
about it, whether function operates on start iterator and end iterator or start
index and end index it is the same, in matter of fact the bigger problem can be
then if a function that you'd expect to operate on start and end functions with
start and length instead. Like `substr`...

# Smarter pointers

* <https://dustri.org/b/my-favourite-c-footgun.html>

# TODO list of c++ fails

Things I know are horrible but haven't described here yet

* RAII
* CRTP
* most vexing parse
* STL
* boost
* SFINAE
* smarter pointers
* casts

# See also

One of my favourite ways to get annoyed about how bad C++ is is to follow what
C++ enthusiasts do, believe it or not. Youtube channels like C++ weekly with
Jason Turner, or cppcon and boostcon are just full of C++ WTF material, and
these are people who are proponents of C++. Same is true for C++ books by these
professionals: Nikolai Josuttis, Stuart Herbert etc. write books about the most
efficient and smart C++ stuff that is all very WTF-worthy usually. This is all
ideal if you want to have an headache for sure. With the exception of Bjarne
Stroustrup, who is actually quite sensible and reasonable and talks about things
that make sense.

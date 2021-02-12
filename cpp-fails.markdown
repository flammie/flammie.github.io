# Flammie on C++

C++ is one of the worst programming languages that gets widely used. I will
collect here some personal experiences, however, there are very well known
public listings on the same topic just as well, including:

* [C++ FQA](https://yosefk.com/c++fqa/)
* [C++ criticism on
   wikipedia!](https://en.wikipedia.org/wiki/Criticism_of_C%2B%2B)
* https://apenwarr.ca/log/20100718
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



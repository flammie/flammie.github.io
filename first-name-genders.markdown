# Flammie on gendering NLP

One of the big annoyances in doing natural language processing especially in
Europe is that you have to assign an often binary gender to pretty much
everything. This is because some European languages really need to know gender
of  everything that is talked about. The gender is quite arbitrary designation
anyways and in many of the languages it is random for a lot of things but the
most problematic part for NLP is probably just tracking genders of humans then,
cause that does often match the gender of something else then. So as to
summarise the problem in examples:

* *hän<sub>?</sub> on ohjelmoitsija<sub>?</sub>*
  (Finnish, 'they are a programmer')
* *she<sub>F</sub> is a programmer<sub>?</sub>* (English)
* *Sie<sub>F</sub> ist Programmiererin<sub>F</sub>*

The three languages have different requirements to mark gender, if you machine
translate from one without explicit information it has to be conjured from
somewhere. There are few popular approaches to this:

1. majority votes: he is more common than she, male programmers are more common
   than female. This is nothing but problems, being wrong slightly less than
   50 % of times is not a good thing when mistakes are problematic
2. gather gendered words in context, this is ok for some few words but gets
   wrong quite fast

The correct solution for this problem is not to guess when you cannot know. It's
very easy for people to tolerate computer systems that say *they* too often or
`*innen` too often.

## Names with genders

There are traditions in many places to keep names for *girls* and *boys*
separate, in some countries it is even codified in laws. Problem is, it has
never worked even within these countries. If you look a census data or name
database, usually best you can get is few odd names with close to 100 % gender
distribution and a long row of 90–50%, and that is only within one language
community and age group. Crossing some country borders, going 100 years to the
past, the statistics get flipped almost more often than not. And that doesn't
even begin to take into account how gender binary has become more outdated as of
late.

## List of Names

This is just a short collection of names that have broken my machine
translations:

* Toni (female in English, male in Finnish)
* Janne (female in Norwegian, male in Finnish)
* Aki (female in Japanese, male in Finnish)


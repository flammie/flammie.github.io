# Flammie lists: Low-Resource Languages in Natural Language Processing
an informal survey into meanings of the word 'low-resource' in context of NLP.

There's been a few twitter and after-the-conference-beer-session debates about
what low-resource means in our field, the definitions seem to vary greatly. I
started this page to collect some citations tongue-in-cheek. The variance is of
course caused by where you come from, if you only used to creating neural models
of English with terabytes of data then it is understandable that you call few
gigabytes low amount of resources.

This is not a scientific meta-study, I just make notes to self while reading
papers that I see on twitter and at conferences. This is actually a link list,
much better than zotero or such stuff.  No offence is intended to authors of the
papers. (But seriously, if your title has *Low-Resource* in it and the paper is
about English, German, French and Hindi, some pointing and *ha ha!* type of
offence may be implicit)

Ok, I know that many papers do explain that it's *um, actually* a low resourced
*domain* or *noisy* data set, but that's also one of the points that causes the
inflation of realistic low-resource scenarios: where a language actually does
not have data and probably cannot have, e.g. having mainly L2 speaker community
of few thousand people with underspecified orthographic standards and norms.

## A Little Annotation does a Lot of Good: A Study in Bootstrapping Low-resource
   Named Entity Recognizers

* *Found at:* <https://arxiv.org/abs/1908.08983>
* *Title*: no mention of languages
* *Abstract*: no mention of languages
* *First mention of language*: ...

> Spanish, Dutch, German, Hindi and Indonesian.

I guess Hindi is slightly more noisy than European languages and Indonesian even
bit less resourceful, but probably in top... 50 biggest?

## Pushing the Limits of Low-Resource Morphological Inflection

* *Found at*: <https://www.aclweb.org/anthology/D19-1091.pdf>
* *Title*: no mention of languages
* *Abstract*: no mention of languages
* *First mention of languages*: last paragraph of first page (the actual
  reference to languages is probably "SIGMORPHON shared task" so it's kind of ok
  to leave langauges out in that context?)

> Encouraging examples are the Yupik morphological analyzer (Schwartz et al.,
> 2019) and the Inuktitut educational tools

SIGMORPHON task ok, Yupik good :-)

## WMT shared task on low-resource...

* *Found at*: <http://www.statmt.org/wmt19/parallel-corpus-filtering.html>

> a very noisy 40.6 million-word (English token count) Nepali-English corpus and
> a 59.6 million-word Sinhala-English corpus

I mean yeah, Nepali and Sinhala could be considered lower resource but when you
have tens of millions of words it becomes more debatable, ok it's more about
noisy data than low resource, but it is actually better than taking small sample
from large data that is not noisy, since noisiness is one common feature in
realistic low resource scenario.

## WMT shared task for very low resources:

* *Found at*: <http://www.statmt.org/wmt20/unsup_and_very_low_res/>

> We now propose a third edition on UMT, which aims at a more realistic
> scenario, German to Upper Sorbian (and Upper Sorbian to German) translation.
> Upper Sorbian is a minority language of Germany that is in the Slavic language
> family (e.g., related to Lower Sorbian, Czech and Polish), and we provide here
> most of the digital data that is available, as far as we know.

> We allow the use of all German and Upper Sorbian data released for WMT,
> including the 60000 sentence parallel German/Upper Sorbian training corpus.
> Other WMT 2020 data for other languages may be used. Upper Sorbian is a Slavic
> language which is related to Czech, so the German/Czech parallel data below
> may be of particular interest for building multilingual systems. Thank you to
> the Opus project for the German/Czech parallel data.


## Extremely low-resource neural machine translation for Asian languages

* *Found at*: <https://link.springer.com/article/10.1007/s10590-020-09258-6>
* *Title*: no mention of languages
* *Abstract*: **English** and four **Asian** languages
* *First mention of language*: unnamed four Asian languages in abstract and
  background, the languages are not actually named before section 4.1.1
  (unnumbered sections in *Machine Translation*) *Experimental Setup*,
  *Dataset*, *Parallel Corpus*

> The parallel training, validation, and test sets were extracted from the Asian
> Language Treebank (ALT) corpus (Riza et al. 2016).Footnote3 We focus on four
> Asian languages, i.e., Japanese, Lao, Malay, and Vietnamese, aligned to
> English, leading to eight translation directions. The ALT corpus comprises a
> total of 20, 106 sentences initially taken from the English Wikinews and
> translated into the other languages.

Notably, the size of 20k parallel sentences is small, though it is probably not
the only resource one can find in *Japanese*, *Vietnamese*, *Malay* or *Lao*?

## MT4All shared task "underresourced languages"

found at <https://sigul-2022.ilc.cnr.it/mt4all-shared-task/>:

> Every subtask is a combination of under-resourced (or moderately
> under-resourced) language pairs and domain, except for #3, in which only the
> domain may be considered under-resourced.
>
> 1. Unsupervised translation from English to Ukrainian, Georgian and Kazakh in the Legal domain.
> 2. Unsupervised translation from English to Finnish, Latvian, and Norwegian Bokmål in the Financial domain.
> 3. Unsupervised translation from English to German, Norwegian Bokmål, and Spanish in the Customer support domain.

The native languages in Europe definitely have resources, Georgian and Kazakh
too, so it is mainly a low-resource domains?


## Morphological Processing of Low-Resource Languages: Where We Are and What's Next

* *Found at*: <https://arxiv.org/abs/2203.08909>
* *Title*: no languages
* *Abstract*: no languages:
* *First mention of a language*: Subsection 4.2: English, Finnish, Swedish ...
  German, Greek, Icelandic and Russian. (the background section does go
  extensively into detail on other systems and shared tasks).

> **4.2 Data and Languages**
>
> Languages We select three development languages (English, Finnish, and
> Swedish) and four
> test languages (German, Greek, Icelandic, and Russian). We select our test
> languages to maximize orthographic and typological diversity, given three
> constraints: (1) a large number of available paradigms in UniMorph, (2) two or
> more POS in UniMorph, and (3) no known issues with the UniMorph data such as
> large numbers of missing forms.  (We exclude all paradigms containing multiword
> forms.) We note that this yields a set of test languages that are all
> Indo-European, though it spans three different orthographies

while motivation and data selection is understandable, none of the languages are
low-resource and perhaps typological diversity is not that large if all
languages are in same typological sub-group.

## EAMT 2023

* Found at: <https://twitter.com/Maria_doCampoB/status/1668250738277990402/photo/1>
* Languages: English, Bengali, Hindi, Swahili

## Statistics per language and expression

Low[- ]?resource(d):

* English
* Spanish
* Dutch
* German 2
* Hindi
* Indonesian
* Yupik
* Inuktitut
* Nepali
* Sinhala

*Very* low resources:

* Upper Sorbian

*Extremely* low resources:

* Japanese
* Vietnamese
* Malay
* Lao

*Under* resourced:

* Ukrainian
* Georgian
* Kazakh
* Finnish
* Latvian
* Norwegian Bokmål
* German
* Spanish


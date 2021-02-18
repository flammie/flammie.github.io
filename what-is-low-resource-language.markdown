# Low-Resource Languages in Natural Language Processing
an informal survey into meanings of the word 'low-resource' in context of NLP.

There's been a few twitter and after-the-conference-beer-session debates about
what low-resource means in our field, the definitions seem to vary greatly. I
started this page to collect some citations tongue-in-cheek. The variance is of
course caused by where you come from, if you only used to creating neural models
of English with terabytes of data then it is understandable that you call few
gigabytes low amount of resources.

This is not a scientific meta-study, I just make notes to self while reading
papers that I see on twitter and at conferences. No offence is intended to
authors of the papers.

## A Little Annotation does a Lot of Good: A Study in Bootstrapping Low-resource
   Named Entity Recognizers

* *Found at:* https://arxiv.org/abs/1908.08983
* *Title*: no mention of languages
* *Abstract*: no mention of languages
* *First mention of language*: ...

> Spanish, Dutch, German, Hindi and Indonesian.


## Pushing the Limits of Low-Resource Morphological Inflection

* *Found at*: https://www.aclweb.org/anthology/D19-1091.pdf
* *Title*: no mention of languages
* *Abstract*: no mention of languages
* *First mention of languages*: last paragraph of first page (the actual
  reference to languages is probably "SIGMORPHON shared task" so it's kind of ok
  to leave langauges out in that context?)

> Encouraging examples are the Yupik morphological analyzer (Schwartz et al.,
> 2019) and the Inuktitut educational tools

## WMT shared task on low-resource...

* *Found at*: http://www.statmt.org/wmt19/parallel-corpus-filtering.html

> a very noisy 40.6 million-word (English token count) Nepali-English corpus and
> a 59.6 million-word Sinhala-English corpus

## WMT shared task for very low resources:

* *Found at*: http://www.statmt.org/wmt20/unsup_and_very_low_res/

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

* *Found at*: https://link.springer.com/article/10.1007/s10590-020-09258-6
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
the only resource one can find in *Japanese*, *Vietnamese*, *Malay* or *Lao*.


# Flammie on selecting between rule-based, statistics or neural network in NLP

**You can always select all. **

* * *

Historically there has been some unnecessary competition between different
methods of doing NLP (natural language processing), this is kind of artificial
and basically just harming progress. Rules and statistics and neural networks
are just tools to do things, you cannot really reach optimal result without
using right tools. Especially in academia people have always been enamoured to
following *pure* approaches, in practice it's like playing a game of how far can
you go blindfolded with hands tied.

There's a very simple, rule of thumb kind of logic to when and where to use
which approaches:

1. rule-based approach is based on knowledge and logic, if you can figure
   something out by using just pieces of information that can be encoded (e.g.
   in dictionaries~lexical databases) and deduction that can be described to
   computers (e.g. logical rules in programming language), you will be
   guaranteed a 100 % success rate
1. when you eventually face something that you cannot explain based on
   linguistic knowledge of words and deduction (and anything else), knowledge
   derived from statistics counted from large corpora of words is obvious next
   source of information (this is statistical NLP)
1. when you eventually face something that does not appear to be solved by
   throwing simple statistics from corpora at it, neural networks can be trained
   to learn to imitate more complex patterns from data

There are so many linguistic questions we have 100 % guaranteed answer that we
know that starting with pure neural network approach is absolutely waste of
time, to give a simple example an application that only needs to figure out
single words linguistic features (is it spelled correctly? what language is it?
what are it's possible parts-of-speech, morphological analyses, translations to
language X?), we all know this can be looked up from a dictionary, while
counting statistics and learning neural networks from relevant data might not
even lead to correct answer 100 % of the time. Here is where being allergic to
rule-based NLP can really cost a lot. On the other hand, some simple related
tasks of these examples: if the word is not spelled correctly in language X,
what might be a correct spelling; if word has multiple possible analyses, what
are more likely etc.; you can get very far with only collecting linguistic
evidence that is not based on statistics and frequencies, however, statistics
and frequencies are actually linguistic evidence as well so it would be
illogical to ignore them (if you are a rule-based purist). The cases where
neither all the knowledge you can gather up from words and contexts and
frequencies and statistics are not enough to give good answers in end user
applications are many, this is why neural networks have been such a killer app
for NLP, and their most prominent use: guessing the next word in sentence given
the first few words; if you understand linguistics, or logics or mathematics or
anything really, you know this is a very ill-defined task, there is no logically
superior solution to such questions it is simply guessing from input that
definitely has not got sufficient data to have one correct and complete
solution; but there are some solutions that seem more acceptable than others and
knowledge and logic and statistics (of the words that are there) alone do not
seem to lead to this solution alone. Neural networks can be optimised to do this
prediction by training them specifically and it may encode something we cannot
put into code, data or statistics that is usable information about, should one
say, linguistic intuition and world knowledge? To give a less contested example,
the word sense disambiguation in machine translation is ideal task to see
whether you can explain something with pure linguistics and logics based on
local context (the words you see in same sentence ~ paragraph), whether you have
to resort to statistics when explaining your decision or whether it's up to
language intuition; as any competent linguist is likely to use all three to
explain translations so should a computer when translating, no?

If you don't like rules of thumbs, here's some more experiences along the road.
Let's go in order of what we know to what we are unsure of! TLDR table of
contents:

1. Words (spell-checking, dictionaries, morphology)
1. Phrases and sentences (grammar checking, ...?)
1. Meanings (machine translation, proper knowledge extractions)

Speech instead of text on the other hand:

* Audio, sounds, phones etc. physical measurable things are well understood and
  defined
* The raw knowledge-based models sound terrible and have to guess a lot in
  recognition AFAIK
* speech data has more random variance
* speech data is easier to create in larger quantities
* therefore neural models are very useful very fast


## Analysing words

We have dictionaries: lists of words in given language, and bits and pieces of
information related to words. For all the words in the dictionary we also know
how to inflect them, for languages where it matters (i.e. not English).
For any given word-form we can easily tell with
certainty if it is a word in a given language, if it is a noun or a verb, what
kind of inflectional and derivational components it contains, this is something
that is easy to analyse based on pure knowledge of vocabulary and the rules that
govern inflection and word-formation and such. This all is good enough for for
example spell-checking and correction, and other simple applications that
require minimal natural language processing. Information retrieval for example
does not need to deeply analyse texts, beyond knowing which words kind of relate
to each other, to be useful.

The first actual problem that comes with a knowledge-based approach of analysing
word-forms in any way is the ambiguity, while we do know that a word-form like
‘walk’ is indeed a word in English language for 100 % certainty, we also know
that it can be either a verb or a noun: “I walk a walk." is a valid English
sentence using the two different meanings of the word ‘walk’. A knowledge based
approach in principle then must say, if you only ask what is word-form ‘walk’,
without any context, that it may be a noun or a verb. For some naïve users of
language technologies this has always been a problem, it is harder to program
applications if you don't have clear answers. This is where already a
statistical approach has helped the confused middle-users of language
technology, answer that ‘walk’ is 90 % a verb and 10 % a noun can be more
palatable than 50/50. Naturally if you have context information to work with it
is possible to have a 100 % knowledge-based answer in many cases: ”I usually
just walk home” is 100 % a verb and ”I went for a walk” is 100 % a noun based on
linguistic knowledge alone. But in real world, these *ambiguities* are very
common, and all such ambiguous words within one sentence will *multiply* the
number of potential meanings of the whole sentence, the mathematicians will have
realised by now that the potential problems grow exponentially when you add
words into a sentence. And that right there is the other limit of rule-based
approach, if the exponential number of combinations is too big number, even if
linguistics and logics and rules could come to a conclusion here, it may take
more time and resources than we have (this limitation was very strong in the
1980's computational linguistics, in 2000's I have often wondered if we should
re-evaluate if that actually holds anymore...). And the final logical conclusion
might be that there is two or even more possibilities that are equally likely!
This is a reality not many language technologists are willing to work with, that
there are two or more correct solutions. And that's why a lot of research in
language technology is super frustrating to read. People often evaluate their
solutions based on idea of one correct solution and a system giving the other
correct solution will be marked as a failing system.

## Speech technology

AFAIK even the best efforts at constructing rules for speech synthesis have lead
to quite robotic voices, while phonetics isn't my strong suit I think it's safe
to assume that statistics and neural networks are necessary here.

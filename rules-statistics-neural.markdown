# Flammie on selecting between rule-based, statistics or neural network in NLP

**You can always select all. **

* * *

Historically there has been some unnecessary competition between different
methods of doing nlp, this is kind of artificial and basically just harming
progress. Rules and statistics and neural networks are just tools to do things,
you cannot really reach optimal result without using right tools. Especially in
academia people have always been enamoured to following *pure* approaches, in
practice it's like playing a game of how far can you go blindfolded with hands
tied.

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
illogical to ignore them. The cases where neither all the knowledge you can
gather up from words and contexts and frequencies and statistics are not enough
to give good answers in end user applications are many, this is why neural
networks have been such a killer app for NLP, and their most prominent use:
guessing the next word in sentence given the first few words; if you understand
linguistics, or logics or mathematics or anything really, you know this is a
very ill-defined task, there is no logically superior solution to such questions
it is simply guessing from input that definitely has not got sufficient data to
have one correct and complete solution; but there are some solutions that seem
more acceptable than others and knowledge and logic and statistics (of the words
that are there) alone do not seem to lead to this solution alone. Neural
networks can be optimised to do this prediction by training them specifically
and it may encode something we cannot put into code, data or statistics
that is usable information about, should one say, linguistic intuition and world
knowledge? To give a less contested example, the word sense disambiguation in
machine translation is ideal task to see whether you can explain something with
pure linguistics and logics based on local context (the words you see in same
sentence ~ paragraph), whether you have to resort to statistics when explaining
your decision or whether it's up to language intuition; as any competent
linguist is likely to use all three to explain translations so should a computer
when translating, no?

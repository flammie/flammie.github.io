# Flammie on accuracy precision recall f scores BLEUs oh my

*I was at an LREC conference discussing about spell checkers with another author
of another spell checker, when someone asked us to explain the scores. We all
know the formulas: false and true, positives and negatives, dataset size and all
that, we also know intuitive meanings of these terms, but we somehow failed to
explain it to someone who has not worked in either spell checking or grammar
checking. To uncover why is that I have written up this handy cheat sheet which
explains to why we often misunderstand each other as well.*

To begin an introduction of metrics in NLP I should say that we are looking at
ways to automatically measure the quality of things. We have something we think
is a correct solution, and we measure how many of the correct solutions our
system finds, and how many it misses. Usually we also measure how many incorrect
solutions it suggests, in some tasks we also can easily measure how many
incorrect solutions it does not suggest. Not defining what correct solutions are
to begin with is the most fundamental mistake and cause of misunderstandings
when we communicate evaluations in NLP works. Not all tasks in NLP are equally
suitable for easily measured targets, we may not know what all and all correct
solutions are, we may or may not allow multiple correct answers (language is
ambiguous, remember, if we only allow one correct solution it is a very
different thing than writing a system that finds all theoretically correct
solutions), we may count correctness on sentence level, word level, or per what
ever other thing we are measuring: if we do named-entity recognition or
error-checking and correction we may measure per NE, per error, or we may decide
to see that either you get everything in one sentence correct or not. These
decisions are made when writing evaluation scripts but not always communicated
well in articles to my experience. The common practices are not common enough to
expect something or other.

## The terms

*Correct* is usually the first term you should define when evaluating. While it
is very common to have NLP systems input and output plain text strings and then
define correctness as equal string match, if you did it so it still should be
described in the article. If there are multiple correct answers, how to count
those needs to be described of course. Some NLP systems are only for searching or
finding things, like information retrieval and spelling and grammar checking
(without correction). In this case correctness is easily defined as finding the
words, sentences or documents that contain errors and not those that do not.

*True positive* (TP) is a term for when the system gives correct answer as outlined
above. This is what we want the system to do.

*False positive* (FP) is a term for when the system gives an incorrect answer, that
is it finds something we didn't want or it gives a wrong answer that is not
within the correct answer set.

*False negative* (FN) is a term when the system fails to give correct answer, that is
it misses something it should find or does not give one of the correct answers.

*True negative* (TN) is a term for when the system does not give a wrong answer, that
is, it does not find something that it should not or does not give an incorrect
answer. It is sometimes a bit harder to calculate or wrap your head around.

*Precision* (P) is calculated to find out intuitively how good most of the results
the system gives are, how precise the system is; if it finds something how often
it is a good thing it finds or if it gives an answer how many of the answers are
good. The formula for this is: *P=TP/(TP+FP)* how many of all answers given are
correct, since *TP* is a *correct answer given by system* and *FP* is a
*incorrect answer given by system*. You can kind of get perfect 100 here by
giving no answers at all, or just one answer that is definitely correct.

*Recall* (R) is calculated to find out *intuitively* how many of the correct
results system finds from all of the results, how much it knows or can recall
so to say. The formula for this is: *R=TP/(TP+FN)* how many correct answers are given
within all potential correct answers, because *TP* is correct answer *that the
system does give* and *FN* is a correct answer *that the system failed to give*.
For this metric, however many incorrect answers the system suggests *FP* is
irrelevant, and you can get a perfect 100 for *R* score by suggesting
everything for everything (i.e. say everything matches or give all analyses or
corrections to everything etc.).

So here we notice few things already: you can *game* both precision or recall
within most tasks, and often in a way there is a direct tradeoff for maximising
either or (but not always). Also, true negatives did not factor in in either of
metrics, as I said, they are sometimes tricky to calculate but also sometimes
not relevant in NLP...

*F score* is often used in NLP, but it is nothing more than a bit of
mathematical trickery that does counteract e.g. gaming of precision or recall in
an automated manner. Another way under-utilised purpose of F score is that it
could be used to scale what is more important for given task: precision or
recall, but this is not done very often. You see, F score has a parametre, let's
say β since wikipedia calls it that, that scales whether you value precision or
recall more: setting it to 1 makes this *F_1 score* which is the one that gets
used, however, it is not uncommon to see NLP practicioner to use *F_1 score* and
write multiple paragraphs in discussion to say that "we actually care more about
precision in this task because...", which is a bit silly. Setting *β = 0.5*
would automate the meaning that *precision is twice as important*. The formula
of F score with parametre β is *F_β = (1+β²) × (P×R)/((β²×P) + R)* where the
*F_1 = 2 (P×R)/(P+R)*.  So next time you start to write analysis (you did
analyse your scores in your article didn't you?) of your F scores in your
article, do consider if you meant to use β=0.5 or β=2 for example instead of
just explaining why it went off.

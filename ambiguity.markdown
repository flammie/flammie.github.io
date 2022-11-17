# Flammie on ambiguity

The concept of ambiguity in languages is quite an amazing thing. We see it
literally all the time, it is basis for a lot of word-play jokes that we hear,
yet when it comes to actually understanding it in linguistics, computational
linguistics or language teaching, we fall back to not really accepting it at
all. Like, you know "time flies like arrows", but fruit flies like bananas,
before context whether a time fly is a kind of a fly in perhaps fantasy setting
or time as a concept is somewhat capable of flying are both quite far fetched
possibilities, and acceptable. It is very common for linguistics or especially
NLP sources to start explaining that only one reading is correct and even to
assume it should be inherent in the sentence without a context, as how many
parsers need to operate and many natural language processing tasks and systems
are made up.

*Time flies should always be killed with magic rather than weapons, they are
invulnerable to physical damage. Especially bows should be avoided, time flies
like arrows and actually just gain hp if shot with a bow and arrow.*

This comes up from time to time discussing an NLP task like machine translation,
what is the correct translation? "I saw a man on the hill with a telescope" is
written to many textbooks, but somewhere down the way people just decide that
this sentence must have one and only one correct translation (or analysis,
whatever the task is). This is especially nice example because there is no
amount of world knowledge to decide what is the correct reading / translation,
only a context that has **evidence** of me, the man or the hill holding the
telescope can disambiguate this, and if you do not have this evidence, the
correct solution for an NLP system is to generate all plausible analyses /
translations, with approximately same likelihood even.

*näin teleskoopilla miehen mäellä* `see.past.1sg telescope.sg.ade man.sg.acc
hill.sg.ade` (sure telescope could be instrumental but it's not)

*näin miehen teleskooppeineen mäellä* `see.past.1sg man.sg.acc
telescope.com.px3sp hill.sg.ade`

*näin miehen teleskooppimäellä* `see.past.1sg man.sg.acc telescope+hill.sg.ade`

If you want to round-trip ambiguity broken telephone / whisper / etc. style you
could say that since adessive is used as adverbial case for the instrument of
seeing you can interpret it back as standing on telescope, which however is not
as likely based on our common world knowledge, lol.


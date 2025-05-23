# Flammie on: Free/Open licences and large language models

**TLDR: I think that all current open source licences (also default licence for
unlicenced data) already say: you can use this data to train an LLM, but if it's
e.g. used in a text generation to re-generate more or less verbatim copies of
this data, someone needs to follow this licence terms (e.g. attribution, share
alike, non-commercial). This is not done in 2020–2025 so far. We shouldn't need
a new licence to force creators or users of contemporary AI to follow the
laws ad regulations.**

The large language model scene has brought more focus about intellectual
property rights, licences and all that legal stuff, about texts in general.
While I generally am not a big fan of dealing with legal things, this is a
highly relevant question for most of computational linguistics that I work with.
There are few separate issues here overall and I try to discuss about all of
them, but the text may become a bit confusing as a result.

* what does the licence of texts and such data say about LLM trainings
* whose role is it to follow licences
* what is open source wrt LLMs

*As a sidenote:* I use CC BY-SA licences for most of my texts and GNU GPL
licences for most of my software, if you include them in your LLM generative AI
training set, and your generative AI generates these texts or source codes, they
need to include *attribution* and the resulting new text or programme needs to
be *shared alike* with the same licence. Otherwise the usage **is against the
law and the licence**, whether it's on creator of the generator or user of it
that is responsible, I am not sure, but the legality and the morality of the
issue is quite clear. Using LLMs to launder licence terms and authorship away is
absolutely immoral and most likely illegal too.

## Attribution is basic requirement for most data

Only data that is totally and completely free of copyrights can be used and
re-used without attribution. This is data that whose authors have died long ago,
or that has been very explicitly licenced so, and usually data produced by
governments such as law texts. And even for these texts, it is just good manners
to mention to original authors.

For everything else, the legal requirement of any re-use, such as generating
verbatim copies of texts via generative AI, require attribution. This is not
being done currently. We can debate whether it's the responsibility of the
generator bots authors or the user of the generator bot, but someone is legally
required to do it. This is explicitly mentioned in most permissive open source
licences, such as CC BY or GNU GPL, it is also implicitly the licence of all the
texts where licence has not been mentioned---there is no *publically available*
data that is free for grabs like OpenAI and other big corporations keep saying.

### Fair use is USA only and also not particularly relevant

One common argument that there is is based on the USA law of *fair use*, this is
specific to USA, applies to borrowing of few sentences instead of paragraphs and
chapters, and does still explicitly require the attribution. This seems to me
largely irrelevnt for the discussion, the intention of fair use is quite far
from storing whole texts in a machine that can pretty much copy-paste large
snippets of it verbatim. AFAIK there's no commonly accepted fair use outside USA
and when companies like to point out that similar rules exist in e.g. Europe it
quite often turns out that they are meaning rules relevant for using text
snippets in very restricted cases like teaching material, reviews, parodies,
etc. And all require attribution.

### "Unlicenced", "publically available" data has implicit copyrights too!

Some companies that do not call stealing data *fair use* simply keep using the
phrase *publically available* when rationalising that everything that can be
scraped off the internet is free to be used in whatever way possible. This is
even more absurd, because as a starting point, copyright applies to all written
text from the moment it is created. In fact you need to be very explicit to give
away some rights to text you have written, so claiming that anything you can get
your hands on is yours is just bonkers. And to top that off, most texts that are
scrapable probably do have even explicit and detailed copyright and licencing
terms, and it's the scrapers responsibility to find this out.

See also:

* [WIPO copyright FAQ](https://www.wipo.int/en/web/copyright/faq-copyright#accordion__collapse__18)

## Whose responsibility is following the licence terms then?

This is an interesting question that not many have talked about. It seems clear
to me that large language models can and do generate data and stuff, that
clearly breaks copyrights and/or other contracts on re-use and re-mix of the
original data, but who is responsible. I guess one big problem here is that many
AI critical people assume that the companies producing the AI takes
responsibility, the companies naturally assume that responsibility is of the
users', and end result as of 2025 is that people generate copies, duplicates,
derivatives and remixes of copyrighted work and nobody takes responsibility.
People who are pro AI like to say that AI takes influence from other people's
works like a human that is learning, but we do all understand if a human that
has studied anime and manga starts to sell "studio ghibli *style*" pictures,
they are doing something immoral and illegal, why do we allow AI-generated
pictures pass? It is only because in AI scenario the "AI artist" can assume that
the AI and AI company are responsible for copyright strike, and the companies
quite explicitly say that the person using the AI generator takes all
responsibilities.

## Releasing binaries of language models is not open source

There's a lot of misuse of terminology in the AI and LLM world, lead by the
absurdly named *OpenAI*, a highly closed source for-profit corporation trade
secrets and whatnots. To counter that I think it was meta that started selling
"open source" AI, which in fact is kind of a downloadable binary that contains
some parametres that others can use to run it, and perhaps even mod and
finetune, a software equivalent would be *free software* perhaps. Open source,
as we know it, either by Free Software Foundation or other open source
movements, requires access to all necessary data to re-create the model from the
scratch, and edit and remix it, that's why it's called open source, you get the
sources for re-building. In LLM context this clearly means all the data that was
fed to the LLM, there's no ifs and buts about it. That is the only way to study
the products and remix it truly to ensure it doesn't contain anything unwanted.

# Further readings

* [Ars Technica article on the topic](https://arstechnica.com/information-technology/2024/08/debate-over-open-source-ai-term-brings-new-push-to-formalize-definition/)
* [Linux Foundation blog: The Open Source Legacy and AI’s Licensing Challenge](https://www.linuxfoundation.org/blog/the-open-source-legacy-and-ais-licensing-challenge?hss_channel=fbp-1620822758218702)


# Flammie on: Free/Open licences and large language models

The large language model scene has brought more focus about intellectual
property rights, licences and all that legal stuff, about texts in general.
While I generally am not a big fan of dealing with legal things, this is a
highly relevant question for most of computational linguistics that I work with.
There are few separate issues here overall and I try to discuss about all of
them, but the text may become a bit confusing as a result.

* ((work in progress)) as always

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

One common argument that there is is based on the USA law of *fair use*, this is
specific to USA, applies to borrowing of few sentences instead of paragraphs and
chapters, and does still explicitly require the attribution.

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

See also:

* open source stuff here



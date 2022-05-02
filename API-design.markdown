# Flammie on API design (for scientific software)

*Firstly a brief note about what API is though, in 2020's young programmers have
mostly learnt the word in reference to web APIs (REST, json, GraphQL), but the
word really just means "application programming interface", or the way you call
your code, traditionally from a programming language or a script instead of like
designated set of HTTP addresses and response types, of course the idea is
generalisable over both but what I talk about here about is I have an
application programmer who is using programming language and a libraries in
mind.*

I mainly work as an academic who knows software engineering and linguistics.
There is a long history of scientific software being all pre-alpha quality
scripts that were just workable enough to run an experiment to write a paper.
Very few academic software are successful enough that many other people will use
them, but as the field (here: NLP) gets more popular and profitable, more
requests will crop up. And I think funders also want to see products as result
of funding. So a few research software like this have ended up in use by many or
even most of the researchers in the field, perhaps some commercial groups and
end-users too. And the API's always suck, I have nearly never seen anything that
would be nice to use. Always:

* too many steps, classes and thingamajigs to load up
* confusing naming
* optional params and stuff that aren't optional and obligatory that shouldn't
* too many ways to do the same thing
* the most obvious way is missing (you can use CachingPoolWorkerAsync or
  AbstractFactoryLoader over UnbufferedQuantumStreamFifo but no doIt on
  Strings?)
* you have to keep dragging weird long list of arguments through everywhere

It's understandable, these were built organically during experimentation,
however, the rest of the world do not want to do the experiments first, they
want to use the SOTA model you showed at the EMNLP and get the same results
first. (And I can guarantee you there is only 90 % of required parameters in
that paper, with very different names as in the API).

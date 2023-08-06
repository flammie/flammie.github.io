# Flammie explains: Big O notation and time complexities

*Also: Some notes about mistakes people make with time (and space) complexities
and big O notation.*

Calculation of time and space complexities of algorithms and especially the big
O notation is one of the things many people hopefully remember from theory of
computer science, even if they become practical programmers and software
engineers insteaid of theorists and researchers. The big O notation intuitively,
as most will know gives the *order of magnitude* for something, specifically in
algorithms it determines how much either time or space used will grow if you
have different (sized) inputs to a function. The trivial schoolbook example
being sorting a bunch of things in some sort of a data structure, we say things
like if we sort *n* things it will take, for example *n²* or n squared steps
(comparisons, swaps or such), we say *T(n) = O(n²)*, where *T(n)* is time
function, *O(n)* is the big-O *class of functions* and the parametre *n* is the
number of things to sort. The mathemathical details of these notations in
computer science are always a bit inaccurate (we are kind of saying that time
complexity of unspecified function belongs to set of functions by using equals
sign, that's already two iffy things right there), but the notation will be some
variation of the above, to indicate that the complexity is in class of the
functions defined by the *O*, there is a longer formal definition you can read
about in Wikipedia and also several other groups of functions indicated by
*o(n)*, *Ω(n)*, *Θ(n)* etc., they are theoretically interesting but in CS we
assume that whoever uses *O(n)* notation is at least trying to find the
fastest or smallest bound available anyways; it would be mathematically correct
to say that any sorting algorithm is *T(n) = O(n!)* because there exists a
point where the actorial is larger than the time complexity of the function we
are describing surely.

So, most people will know how to use the *O(n)* notation to describe the
complexity of a sorting function, but what most people either have not learnt or
will have forgotten is that when we deal with more complex real world situations
the system needs to be adapted a bit or we can easily give estimates that are
not useful or even purposefully lying about a complexity. How is that? It has
to do with the selection of the parametres to the *T()* function, if you are
sorting *n* objects it is easy to see that there are no other possible
parametres to change that can influence the time it takes to complete function.
This is already not true when you deal with algorithms related to graph theory
for example, and it specifically translates to finite-state automata theory and
string set matching as well; There are two obvious parametres that one must at
least always mind for graphs / automata: the *edges / arcs / arrows* which are
typically marked by *E*, sometimes we use *|E|* to mean the number of edges
specifically, and the *vertices / states / nodes* which are typically marked by
*V*, and likewise *|V|* to be extra specific that we mean the number of
vertices. Since finite state automata are used in string matching we also use
*s* for string parametre and *|s|* for length of string, as it often is the
parametre limiting the behaviour of the string matching function complexity in
finite-state automata theory. However, there are also parametres like *Σ*, the
size of alphabet which is often the bounding factor of the time complexity of
practical FSA string matching algorithms, but never discussed of. In practice,
people will say things like *with small enough inputs the O notation does not
matter* which can be true but needs not be, if the behaviour of the complexity
is well explained by the *|Σ|* instead.

I should add more examples here.

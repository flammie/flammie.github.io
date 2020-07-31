# Flammie on morphs and morphemes

One of my pet peeves in (computational) linguistics is the sloppiness in use of
terms morph and morpheme. For other subfields of linguistics it seems very easy
for people to distinguish between, say phone and phoneme, one is specific and
concrete and the other is abstraction. In morphology, linguists don't agree on
this terms and computational linguists pretty much just use morpheme for
everything.

I just had one realisations where the misunderstanding might stem from: in
Finnish, the abstraction of morpheme is quite easy because of phonemic
orthography and vowel harmony; it is somehow obvious for even non-educated
person that the *ssa* in *talossa* (house.INE) is the same as *ssä* in
*pöllössä* (owl.INE), making the abstract form, a morpheme, something like
`ss[aä]` = inessive morpheme, with morphs of orthographic as well as phonemic
forms, ssa and ssä. The opposite happens in English, with ridiculously
non-phonemic writing system: it is likewise obvious for native speakrs that a
plural marker *s* in writing same, whether it is pronounced as /s/ or /z/, now,
the morpheme abstraction is not similarly present in orthography, so the plural
morpheme is s and plural morph is always s, I believe it is this why many even
educated computational linguists are confused of morphs and morphemes.

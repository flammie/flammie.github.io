---
layout: default
title: Huomioita ohjelmistojen suomentamisesta
---

* **suomeksi** (This page is only in Finnish since it pertains to Finnish
  software translations

# Flammien huomioita ohjelmistojen suomentamisesta

Kirjoitin tällaisen muistilistan joskus 1990–2000-luvun taitteessa kun käänsin
paljon ohjelmistoja. Alkuperäinen lista lienee jo kadonnut internetistä, tässä
on vain joitain huomioita ohjelmakäännöksistä jotka näkyvät edelleen olevan
tyypillisiä softakäännösten ongelmia.

## Englanninkieliset sanat

Joitain englanninkielisiä sanoja on syytä pitää erityisesti mielessä käännöksiä
tehdessä, sillä niiden suora kääntäminen tekee käännöksistä tosi kökköjä. Joskus
ne ovat alkukielisissä versioissakin tosi huonoja, mutta ohjelmoijat käyttävät
niitä tottuneesti joten niitä tulee aina vastaan.

### Successfully

Ohjelmoijilla on usein tapana kirjoittaa että jokin tehtiin onnistuneesti:
"File was read succesfully", "The download ended successfully" ja jne.
Normaalisti kun sanotaan "tiedosto luettu" niin onnistuminen on jo melko
selvää eikä sitä tarvitse erikseen sanoa:

> _Tiedosto luettu_

Ei:

> ~~Tiedosto luettu onnistuuneesti~~

### Toggle

Suomeksi ei ole mitään kätevää sanaa joka toimisi kaikille sanan *toggle*
merkityksille, kyse on yleensä jostain on/off-asetuksesta mutta voi olla myös
muunlainen sarja asetuksia. Esim. vaihda tai vaihtele on melko ok, mutta
silloinkin joutuu usein sanailemaan uudestaan, vaikka "toggle power" voi
olla "vaihda virta päälle/pois" (tai kytke) niin "toggle display of
HUD" pitää ainakin sanoa että "vaihtele hudin näkyvyyttä".

### Run?

Englanninkielistä kysymyksistä jätetään usein kysymys pois, eli lyhyesti vaikkapa
"Run the program?" eikä "(Do/should we) run the program?" tms. Suomeksi tämä ei
oikein toimi, vaan kannattaa aina lisätä kysmyspartikkeli -kO.

> _Suoritetaanko?_

Ei:

> ~~Suorita?~~

### Really really?

Englanninkielisissä teksteissä on usein turhaa löpinää tai tuttavallisuutta,
tyypillisin esimerkki tästä on "Are you really sure that you really want to quit?"
Suomeksi tämä on syytä kirjoittaa:

> _Lopetetaanko?_

Eikä

> ~~Oletko aivan varma että haluat varmasti lopettaa?~~

### X of Y

Siis koska ei vielä vuonna 2018:kaan softakäännöksissä voi taivuttaa sanoja,
ei voi kirjoittaa 1 juttu 3:sta tai 2 juttua 4:stä, oikeastaan ainoa kelpo
suomennos on vinoviiva:

> _X/Y_

**:-(**


## Suomenkieliset rakenteet

## Ei voi, voida, voitu...

Virheviestien kanssa on yleensä hyvä pitää mielessä mitä tarkalleen sanotaan,
eli onko ongelma väliaikainen tai pysyvä, kannattaako käyttäjän yrittää
uudelleen. Yleensä englanniksi on erikseen "cannot write (into read-only memory"
"could not write (disk is full?)", mutta monet ohjelmien tekijät eivät erottele
näitä hyvin joten niitä on myös syytä pitää mielessä itse. Siis
"Kirjoitussuojatulle levylle ei voi kirjoittaa" yksinkertaisesti koskaan mutta
"levylle ei voitu kirjoittaa" koska tila loppui kesken; viestin koko sisältö
pitää vain ajatella kun sitä kääntää.

### Tallentaessa / tallennettaessa

On varsin yleistä ohjelmoijapuhetta sanoa "error (while) doing stuff".
Ohjelmoijana tulee helpostui kirjoittaneeksi näin kun yrittää kuvailla jotain
epätodennäköistä virhettä jonka ei suoraan voi sanoa johtuneen edeltävästä
toiminnosta mutta kuitenkin pitää sanoa jotain. Vaikka ehkä suositeltavinta on
välttää ylenpalttisen varovaista sanailua ja sanoa että "error while trying to
save" on vain "tallennusvirhe" t. "kirjoitusvirhe", niin jos koko viestin idean
yrittää suomeksi sanoa pitää useimmiten käyttää e-infinitiivin passiivimuoto

> _virhe tapahtui tallennettaessa tiedostoa"_,

joskus harvoin

> ~~virhe tallentaessa tiedostoa~~

voisi olla oikein, sen milloin näin on voi havaita muotoilemalla lausetta
uusiksi "virhe kun tallennettiin ~ tallentaa tiedostoa". Kaiketi on niin että
vain silloin kun aktiivimuoto toimii 0-persoonarakenteena voi myös aktiivin
e-infinitiiviä käyttää.


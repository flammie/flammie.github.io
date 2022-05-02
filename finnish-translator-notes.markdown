* **suomeksi** (This page is only in Finnish since it pertains to Finnish
  software translations

# Flammien huomioita ohjelmistojen suomentamisesta

Kirjoitin tällaisen muistilistan joskus 1990–2000-luvun taitteessa kun käänsin
paljon ohjelmistoja. Alkuperäinen lista lienee jo kadonnut internetistä, tässä
on vain joitain huomioita ohjelmakäännöksistä jotka näkyvät edelleen olevan
tyypillisiä softakäännösten ongelmia.

## Sanat

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

### Append (prepend)

Appendille ei välttämättä ole näpäkkää suoraa käännöstä, jos halutaan korostaa
että lisätään esim. listan tai tiedoston loppuun (alkuun). Usein kuitenkin vain
_lisää_.


### Read-only

Read-onlyn voi suoraan suomentaa vain-luvuksi, esim. "Read-only mode" =
*vain-luku-tila*, mutta se on hieman kankea, ja joskus on parempi uudellen
sanailla vaikkapa *kirjoitussuojatuksi* jos mahdollista.

### Minimum ja maximum

Minimum on vähimmäis- ja maximum enimmäis-. Yleensä kyse on määrästä mutta voi
olla tilanteen mukaan myös pituus tai mitä tahansa. Usein käytetyt *maksimi* ja
*minimi* ovat myös käyttökelpoisia mutta saattavat kuulostaa liian teknisiltä ja
matemaattisilta jos kyse on ihan perusohjelmista.

## Rakenteet

### Ei voi, voida, voitu...

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

### Lopetetaan? Tehdään?

Englanninkielisissä lähdeteksteissä on tyypillistä esittää ikäänkuin
intonaatiokysymyksiä lisäämällä kysymysmerkki jonkinlaisen
toteamuslauseenperään, esimerkiksi "end program?", tämä ei toimi suomeksi sillä
suomessa ei varsinkaan kirjakielessä ole tapana käyttää toteamuslauseita
kysymyksinä, vaan kysymyssana tai liitepartikkeli -kO on pakollinen. Yleensä
käyttämällä liitepartikkelia voikin tällaiset ilmaukset kääntää paljon
täsmällisemmin, sillä suomessa kysymyksen voi kohdentaa mihin tahansa sanaan.

> Virhe tapahtui. Lopetetaanko?

Eikä:

> ~~Virhe tapahtui, lopetetaan?~~

### Ei voida jatkaa, ei muistia

Monesti ohjelmoijat suosivat erittäin lyhyitä ilmauksia jossa esim. pilkulla
ketjutetaan vaillinaisia lauseita, tämä jokseenkin toimii englanniksi muttei
juurikaan suomeksi, yleensä kannattaa kirjoittaa auki jonkin sopivan konjunktion
tms. kanssa, vaikkapa:

> Ei voitu jatkaa ohjelman suorittamista, sillä muisti loppui kesken.



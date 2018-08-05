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

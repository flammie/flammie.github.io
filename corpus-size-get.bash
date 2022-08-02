#!/bin/bash
if test $# != 1 ; then
    echo "Usage: $0 LANGUAGECODE"
    exit 1
fi
#set -x

function getgibs() {
    HEAD $1 | grep -F Content-Length | cut -d ' ' -f 2 |\
        sed -e 's:$: / 1024 / 1024 / 1024:' | bc
}
function getmibs() {
    HEAD $1 | grep -F Content-Length | cut -d ' ' -f 2 |\
        sed -e 's:$: / 1024 / 1024:' | bc
}
function getkibs() {
    HEAD $1 | grep -F Content-Length | cut -d ' ' -f 2 |\
        sed -e 's:$: / 1024:' | bc
}
function opuscount() {
    opusapi=https://opus.nlpl.eu/opusapi/
    corporajson=$(GET "${opusapi}?corpora=True&source=$1&target=en")
    opussize=0
    for corpus in $(echo $corporajson | jq '.corpora[]' | tr -d '"') ; do
        morejson=$(GET "$opusapi?corpus=$corpus&source=$1&target=en&version=latest&preprocessing=raw")
        url=$(echo $morejson | jq ".corpora[] | select(.source==\"$1\") | .url"\
        | head -n 1 | tr -d '"')
        if test -n "$url" ; then
            opussize=$((opussize + $(getkibs "$url") ))
        fi
    done
    echo $opussize
}
function get_language() {
    case $1 in
        ??) egrep "^$1[[:space:]]" iso-639-2.tsv | sed -e 's/	/: /';;
        ???) egrep "^$1[[:space:]]" iso-639-3.tsv | sed -e 's/	/: /';;
        *) echo "$1: ???";;
    esac
}
wikiurl=https://dumps.wikimedia.org/${1}wiki/latest/${1}wiki-latest-pages-articles.xml.bz2
wikisize=$(getkibs $wikiurl)
if false ; then
    newscrawlurl=https://data.statmt.org/news-crawl/${1}/news.2021.${1}.shuffled.deduped.gz
    ncsize=$(getkibs $newscrawlurl)
else
    ncsize=0
fi
opussize=$(opuscount $1)
totalsize=$((wikisize + opussize))
echo "| X | $(get_language $1) | $totalsize kiB | $wikisize kiB | $opussize kiB |"


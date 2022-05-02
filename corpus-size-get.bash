#!/bin/bash
if test $# != 1 ; then
    echo "Usage: $0 LANGUAGECODE"
    exit 1
fi

function getgibs() {
    HEAD $1 | grep -F Content-Length | cut -d ' ' -f 2 |\
        sed -e 's:$: / 1024 / 1024:' | bc
}
function getmibs() {
    HEAD $1 | grep -F Content-Length | cut -d ' ' -f 2 |\
        sed -e 's:$: / 1024:' | bc
}

wikiurl=https://dumps.wikimedia.org/${1}wiki/latest/${1}wiki-latest-pages-articles.xml.bz2
wikisize=$(getgibs $wikiurl)
if false ; then
    newscrawlurl=https://data.statmt.org/news-crawl/${1}/news.2021.${1}.shuffled.deduped.gz
    ncsize=$(getgibs $newscrawlurl)
else
    ncsize=0
fi
totalsize=$((ncsize + wikisize))
echo "| X | $1 | $totalsize GiB | $wikisize GiB | $ncsize GiB |"


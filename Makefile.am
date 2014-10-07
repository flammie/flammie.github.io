## Process this file with automake to produce Makefile.in

## Copyright (C) 2014 Flammie

## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, version 3 of the License.

## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.

## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

HTML_TARGETS=indeksi.html index.html \
			 plokeja/indeksi.html \
			 asetuksia/indeksi.html \
			 asetuksia/index.html \
			 asetuksia/python-2-distutils-cfg.html \
			 asetuksia/i3-brightness-audio.html \
			 asetuksia/xorg-natural-scroll.html \
			 skriptejä/indeksi.html \
			 skriptejä/reconfigure.html \
			 kuvia/indeksi.html \
			 tietoja/flammie.html \
			 plokeja/2004-04-01-old-news.html \
			 plokeja/2005-03-30-first-blog-posts.html \
			 plokeja/2005-08-12-kaksikieliset.html \
			 plokeja/2008-10-22-mussutukset.html \
			 plokeja/2008-11-11-asepalvelus.html

REMOTE_DIR=flammie.dyndns.org:/var/www/flammie.dyndns.org/

doc_DATA=$(HTML_TARGETS)

%.html: %.rst
	$(RST2HTML) $< $@

%.html: %.markdown.en
	$(MARKDOWN)  < $< > $@.body
	egrep '^# ' -m 1 $< | sed -e 's/^# //' > $@.title
	sed -e "s/@TITLE@/`cat $@.title`/" templaatteja/markdown-head.html.en \
		> $@.html.head
	LC_ALL=C stat $< | fgrep Change | sed -e 's/^Change: //' > $@.mtime
	sed -e "s/@MTIME@/`cat $@.mtime`/" templaatteja/markdown-foot.html.en \
		> $@.html.foot
	cat $@.html.head $@.body $@.html.foot > $@
	rm $@.body $@.title $@.mtime $@.html.foot $@.html.head

%.html: %.markdown.fi
	$(MARKDOWN)  < $< > $@.body
	egrep '^# ' -m 1 $< | sed -e 's/^# //' > $@.title
	sed -e "s/@TITLE@/`cat $@.title`/" templaatteja/markdown-head.html.fi \
		> $@.html.head
	LC_ALL=C stat $< | fgrep Change | sed -e 's/^Change: //' > $@.mtime
	sed -e "s/@MTIME@/`cat $@.mtime`/" templaatteja/markdown-foot.html.fi \
		> $@.html.foot
	cat $@.html.head $@.body $@.html.foot > $@
	rm $@.body $@.title $@.mtime $@.html.foot $@.html.head

upload: $(HTML_TARGETS)
	$(RSYNC) --exclude-from=.rsyncignore -av ./ $(REMOTE_DIR) 



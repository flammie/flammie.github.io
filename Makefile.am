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

HTML_TARGETS=indeksi.html \
			 plokeja/indeksi.html \
			 asetuksia/python-2-distutils-cfg.html \
			 plokeja/2004-04-01-old-news.html \
			 plokeja/2005-03-30-first-blog-posts.html \
			 plokeja/2005-08-12-kaksikieliset.html \
			 plokeja/2009-03-01-mussutukset.html

REMOTE_DIR=flammie.dyndns.org:/var/www/flammie.dyndns.org/

doc_DATA=$(HTML_TARGETS)

%.html: %.rst
	$(RST2HTML) $< $@

%.html: %.markdown
	$(MARKDOWN)  < $< > $@

upload: $(HTML_TARGETS)
	$(RSYNC) --exclude-from=.rsyncignore -av ./ $(REMOTE_DIR) 



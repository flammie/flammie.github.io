## Process this file with automake to produce Makefile.in

## Copyright (C) 2017 Flammie

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
			 projekteja/index.html \
			 projekteja/indeksi.html \
			 asetuksia/python-2-distutils-cfg.html \
			 asetuksia/i3-brightness-audio.html \
			 asetuksia/ssh-gateway.html \
			 asetuksia/xorg-natural-scroll.html \
			 skriptejä/indeksi.html \
			 skriptejä/index.html \
			 skriptejä/reconfigure.html \
			 skriptejä/split-text-lines.html \
			 skriptejä/special-recode.html \
			 kuvia/indeksi.html \
			 tietoja/flammie.html \
			 plokeja/2004-04-01-old-news.html \
			 plokeja/2005-03-30-first-blog-posts.html \
			 plokeja/2005-08-12-kaksikieliset.html \
			 plokeja/2008-10-22-mussutukset.html \
			 plokeja/2008-11-11-asepalvelus.html \
			 häkkejä/dublin-airport-text-login.html

REMOTE_DIR=flammie.dyndns.org:/var/www/flammie.dyndns.org/
LOCAL_DIR=/var/www/html/

.DUMMY: build upload deploy

build:
	$(JEKYLL) build

_site: build

upload: _site
	$(RSYNC) --exclude-from=.rsyncignore -av _site/* $(REMOTE_DIR) 

deploy: _site
	rsync -avz _site/* $(LOCAL_DIR)


RST2HTML=rst2html.py
RST_SOURCES=indeksi.rst
HTML_TARGETS=indeksi.html
REMOTE_DIR=flammie.dyndns.org:/var/www/flammie.dyndns.org/htdocs
SUBDIRS=#plokit tekstit mirror

all: $(HTML_TARGETS)
	$(MAKE) all-recursive

all-recursive:
	for d in $(SUBDIRS) ; do \
		$(MAKE) -C $$d all ; \
	done

%.html: %.rst
	$(RST2HTML) $< $@

upload: $(HTML_TARGETS)
	rsync --exclude-from=.rsyncignore -av ./ $(REMOTE_DIR) 



datarootdir := $(PREFIX)/share
datadir := $(datarootdir)
mandir := $(datarootdir)/man
bindir :=  $(PREFIX)/bin

all: ../docs/quickemu.1.md

../docs/quickemu.1.md :
	./build_manuals

clean:
	rm ../docs/*.md
	#rm ../docs/*.1
	rm ./quickemu_conf.lst
	rm ./quickemu.lst
	rm ./quickget.lst
	rm ./README_main.md
	rm ./README.lst
	rm ./*-generated.md



install_docs: all
	install -d $(DESTDIR)$(mandir)/man1
	install -d $(DESTDIR)$(mandir)/man5
	install -m 644 ../docs/quickget.1 $(DESTDIR)$(mandir)/man1
	install -m 644 ../docs/quickemu.1 $(DESTDIR)$(mandir)/man1
	install -m 644 ../docs/quickemu_conf.5 $(DESTDIR)$(mandir)/man5
	# TODO: remove quickemu_conf.1 refs after reasonable time
	# for now we need to be tidy so users do not get disadvantaged
	rm -f $(DESTDIR)$(mandir)/man1/quickemu_conf.1


install_bins:
	install -d $(DESTDIR)$(bindir)
	install -m 755 ../quickget $(DESTDIR)$(bindir)
	install -m 755 ../quickemu $(DESTDIR)$(bindir)
	install -m 755 ../quickreport $(DESTDIR)$(bindir)
	install -m 755 ../chunckcheck $(DESTDIR)$(bindir)

install: install_bins  install_docs

uninstall::
	rm -f $(DESTDIR)$(mandir)/man1/quickget.1
	rm -f $(DESTDIR)$(mandir)/man1/quickemu.1
	# TODO: remove quickemu_conf.1 refs after reasonable time
	rm -f $(DESTDIR)$(mandir)/man1/quickemu_conf.1
	rm -f $(DESTDIR)$(mandir)/man5/quickemu_conf.5
	rm -f $(DESTDIR)$(bindir)/quickget
	rm -f $(DESTDIR)$(bindir)/quickemu
	rm -f $(DESTDIR)$(bindir)/quickreport
	rm -f $(DESTDIR)$(bindir)/macrecovery
	rm -f $(DESTDIR)$(bindir)/chunkcheck


.PHONY: all

VER=2.1.9-1

all:
	tar xvfz noip-duc-linux.tar.gz
	make -C noip-$(VER)
install:
	install -D -m 777 noip-$(VER)/noip2 $(DESTDIR)/bin/noip2
	install -D -m 777 common.sh $(DESTDIR)/common.sh
	install -D -m 777 launch.sh $(DESTDIR)/launcher
	install -D -m 777 configure.sh $(DESTDIR)/configure

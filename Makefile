CFLAGS=-O2 -std=c89 -Wextra `pkg-config --cflags libevdev`
LDFLAGS=`pkg-config --libs libevdev` -lxdo

.PHONY: all clean

all: push-to-talk

push-to-talk: push-to-talk.c

clean:
	rm -f push-to-talk

install:
	install -m 755 push-to-talk /usr/bin
	install -m 644 push-to-talk.desktop /etc/xdg/autostart

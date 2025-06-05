#
#  This file is part of MaidCard Noir
#
#  MaidCard Noir is free software; you can redistribute it and/or
#  modify it under the terms of the GNU General Public License
#  as published by the Free Software Foundation; either version 3
#  of the License, or (at your option) any later version.
#
#  MaidCard Noir is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
#  See the GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with MaidCard Noir; if not, see <https://www.gnu.org/licenses/>.
#

DESTDIR ?= /usr/local/
DESTDIR := $(shell realpath $(DESTDIR))

CFLAGS += -O2 -march=native -Wall -Wextra -Iinclude

.PHONY: all clean

all: build/noir
clean:
	rm -rf build

install: build/noir
	install -c build/noir $(DESTDIR)/bin
uninstall:
	rm -f "$(DESTDIR)/bin/noir"

build:
	mkdir -p build

build/noir: main.c | build
	$(CC) $(CFLAGS) $^ -o $@ -lm

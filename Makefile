PREFIX := /usr
INSTALLDIR := $(PREFIX)/share/emulationstation/themes/simple-dark


all:
	@echo "Nothing to make for es-theme-carbon. Available commands:\n"
	@echo "  make install       Installs files to $(DESTDIR)$(INSTALLDIR)"
	@echo "  make test-install  Runs through a test install\n"

install:
	mkdir -p $(DESTDIR)$(INSTALLDIR)
	cp -a 3do 3ds amiga amstradcpc apple2 apps arcade art atari800 atari2600 atari5200 atari7800 atarifalcon atarijaguar atarijaguarcd atarilynx \
          atarist atarixe c64 coco colecovision daphne dragon32 dreamcast famicom fba gamegear gb gba gbc gc genesis intellivision kodi \
          macintosh mame mastersystem megadrive moto msx n64 nds neogeo nes ngp ngpc odyssey2 openbor pc pce-cd pcengine ports ps2 ps3 psp psx \
          retropie saturn scummvm sega32x segacd sfc sg-1000 snes solarus trs-80 vectrex videopac virtualboy wii wonderswan wonderswancolor xbox \
          zmachine zxspectrum *.xml *.txt $(DESTDIR)$(INSTALLDIR)

test-install: all
	DESTDIR=/tmp/build $(MAKE) install

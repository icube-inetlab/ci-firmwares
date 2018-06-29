# Prerequisite

all: init_submodules

.PHONY: init_submodules
init_submodules:
	git submodule update --init --recursive

clean:
	rm -f *_autotest.elf
	rm -f *_idle.elf

install-arduino-ide:
	if [ ! -f arduino-1.8.5-linux64.tar.xz ]; then\
		wget http://downloads.arduino.cc/arduino-1.8.5-linux64.tar.xz;\
		fi; \
	if [ ! -d arduino-1.8.5 ]; then tar xf arduino-1.8.5-linux64.tar.xz; fi;

%:
	$(MAKE) -C riot $*
	$(MAKE) -C arduino $*

# Prerequisite

all: init_submodules

.PHONY: init_submodules
init_submodules:
	git submodule update --init --recursive

clean:
	rm -f *_autotest.elf
	rm -f *_idle.elf

%:
	$(MAKE) -C riot $*
	$(MAKE) -C arduino $*

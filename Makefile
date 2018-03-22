# Prerequisite

all: init_submodules

.PHONY: init_submodules
init_submodules:
	git submodule update --init --recursive

%:
	$(MAKE) -C riot $*
	$(MAKE) -C arduino $*

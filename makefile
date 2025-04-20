
ifndef BUILDDIR 
	BUILDDIR=$(shell pwd)/build
endif

all: lib

lib: 
	mkdir -p $(BUILDDIR)
	mkdir -p lib
	cd src; make all

test:
	cd old-test; make all


clean:
	-rm -rf build/
	-rm -rf lib/
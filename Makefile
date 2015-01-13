# -*- mode: makefile-gmake; coding: euc-jp-unix -*-
#==============================================================================

SCONS := scons -Qj4
PYTHON3 := C:/Python34/python.exe

.PHONY: all build clean run

all: build

run:
	$(PYTHON3) run.py 40

run_noopt:
	$(PYTHON3) run_noopt.py 40

build:
	$(SCONS) fib.pyd

clean:
	$(SCONS) -c fib.pyd

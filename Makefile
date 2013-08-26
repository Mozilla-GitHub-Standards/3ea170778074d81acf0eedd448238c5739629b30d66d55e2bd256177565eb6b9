HERE = $(shell pwd)
BIN = $(HERE)/bin
PYTHON = $(BIN)/python

INSTALL = $(BIN)/pip install --no-deps
VTENV_OPTS ?= --distribute

BUILD_DIRS = bin build include lib lib64 man share


.PHONY: all test docs build_extras

all: build

$(PYTHON):
	virtualenv $(VTENV_OPTS) .

build: $(PYTHON)
	git clone https://github.com/mozilla-services/loads.git
	cd loads; ../bin/python setup.py develop

test:
	bin/loads-runner load_gen.TestLoad.test_ping

load:
	bin/loads-runner --config loads.ini

clean:
	rm -rf $(BUILD_DIRS)

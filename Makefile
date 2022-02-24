SHELL := /bin/bash

STACK ?= stack
CABAL ?= cabal --ghc-option=-dynamic
FMT ?= cabal-fmt
DIR ?= src

SRC ?= $(shell find $(DIR) -name "*.hs" -type f)
FLAGS ?=

all:

.PHONY: clean
clean:
	rm -rf dist-newstyle/
	$(STACK) clean

.PHONY: cbuild
cbuild: clean
	$(CABAL) build

.PHONY: cinstall
cinstall:
	$(CABAL) install

.PHONY: ctest
ctest:
	$(CABAL) test

.PHONY: crepl
crepl:
	$(CABAL) repl

.PHONY: purge
purge:
	@$(STACK) purge

.PHONY: build
build: clean
	@$(STACK) build

.PHONY: test
test:
	@$(STACK) test

.PHONY: run
run:
	@$(STACK) exec template-bin

.PHONY: fmt
fmt:
	$(FMT) $(SRC)

.PHONY: docs
docs:
	$(CABAL) haddock

SHELL := /bin/bash

CABAL ?= cabal
FMT ?= cabal-fmt
DIR ?= src

SRC ?= $(shell find $(DIR) -name "*.hs" -type f)
FLAGS ?=

all:

.PHONY: build
build:
	$(CABAL) build

.PHONY: install
install:
	$(CABAL) install

.PHONY: run
run: build
	@./$(PROJECT)

.PHONY: test
test:
	$(CABAL) test

.PHONY: fmt
fmt:
	$(FMT) -w $(SRC)

.PHONY: repl
repl:
	$(CABAL) repl

.PHONY: docs
docs:
	$(CABAL) haddock

.PHONY: clean
clean:

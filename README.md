# haskell-project-template

1. [Introduction](#Introduction)
2. [Dependencies](#deps)
3. [Getting Started](#start)
    1. [Build](#build)
    2. [REPL](#repl)
    3. [Test](#test)
    4. [Documentation](#docs)
    5. [Research](#search)
4. [Targets](#targets)

<a name="Introduction"/>

## 1. Introduction
Inspired by [this](https://github.com/joshcough/HaskellStarter#getting-started-with-this-project) awesome `haskell` starter project, 
I made this small boilerplate *repo* to visualize and learn the possible ways to go about haskell projects and templates.

Another great material just targeted at the haskell language is [this](https://github.com/joshcough/HaskellStarter#getting-started-with-this-project).

<a name="deps"/>

## 2. Dependencies
### Arch Linux
```sh
sudo pacman -S ghc ghc-static haskell cabal-install stack
cabal install base
cabal install github # example of direct haskell installation, not needed here
```

<a name="start"/>

## 3. Getting Started

<a name="build"/>

### 1. Build
#### Cabal
Cabal (Common Architecture for Building Applications and Binaries) enables us to 
build `haskell` libraries and programs. This is the standard tool for haskell projects.
[This](https://www.haskell.org/cabal/) is a great starting point to understand how to work with cabal.

A few helpful commands for getting started with Cabal:

```sh
$ cabal --help
$ cabal update
$ cabal init
$ cabal install github
$ cabal build
$ cabal test
$ cabal repl
$ cabal install
```

* `cabal --help` shows you all the Cabal commands. Highly recommended.
* `cabal update` updates Cabal so that it has all of the latest package information.
* `cabal init` runs you through a series of questions to start a new project.
* `cabal build` builds your project locally (into the `dist` directory).
* `cabal test` builds your project and then runs all of your tests.
    * Given the `--enable-tests` flag, all tests will be run and only installs the library if the tests pass!
    * All `test-suite` configurations in the `*.cabal` file get ran when running this command.
* `cabal repl` runs GHCI with your project already loaded.
* `cabal install` installs a package.
  * Given zero arguments, it will install your package.
  * Given any number of library arguments (like `cabal install github` which was used above), it will download those libraries from hackage, build, and install them.
  * Given `--only-dependencies`, it will install all your package's dependencies.  This is the recommended way to install new libraries to a project, as it will choose a version to install that is compatible with your other dependencies.
  * Normal installs executables in your project as well as the library. Location is by default `~/.cabal/bin`.

This project is a working Cabal project, and this document explains the Cabal configuration, which is in `haskellstarter.cabal`. Let's get started by taking a quick peek at it, and we'll create a Haskell library.

#### Stack
This was the chosen build tool due to its easy configuration and wrapping around Cabal. Great starting 
points are [here](https://docs.haskellstack.org/en/stable/README/) and [here](https://docs.haskellstack.org/en/stable/GUIDE/). Stack 
facilitates the use of cabal to manage dependencies and can also sandbox builds.

```sh
$ stack new
$ stack build
$ stack exec
$ stack test
$ stack setup
$ stack ghc 
$ stack ghci
$ stack runghc
```

<a name="repl"/>

### 2. REPL
#### ghci
`ghci` is something like a haskell REPL where we can try out and evaluate haskell code in real time.
```sh
$ ghci
```

#### Cabal
Starts ghci REPL with all the modules preloaded.
```sh
$ cabal repl
```

<a name="test"/>

### 3. Test
In Haskell and Cabal there are a lot of different test libraries and frameworks:

- HUnit – a library for writing unit tests
- QuickCheck – a library for writing properties
- test-framework – a framework for organizing and running unit tests and properties
- doctest – inject tests directly into your documentation

Tests can be easily automated with a CI tool such as `Travis CI` and the cabal build 
tool.

#### Travis CI
```sh
TODO
```

<a name="docs"/>

### 4. Documentation
#### Haddock - Haskell Documentation
```sh
TODO
```

<a name="search"/>

### 5. Haskell Research
#### Hackage
Haskell packages :)

- [http://hackage.haskell.org](http://hackage.haskell.org)
- [http://hackage.haskell.org/packages](http://hackage.haskell.org/packages)
- [http://hackage.haskell.org/upload](http://hackage.haskell.org/upload)

#### Hoogle
[Hoogle](https://hoogle.haskell.org/) is the go place for searching haskell-related APIs.

- Functions 
- Libraries 
- Documentation 
- Links to source code

<a name="targets"/>

## 4. Targets
1. `make build`
1. `make install`
1. `make docs`
1. `make test`
1. `make clean`
1. `make purge`

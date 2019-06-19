#!/bin/sh

sudo apt install m4

opam --version
ocaml -version

opam install dune ocamlfind core base ounit qcheck react ppx_deriving

make test

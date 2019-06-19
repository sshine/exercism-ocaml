#!/bin/sh

ocaml -version
opam --version

opam init
eval $(opam config env)
opam install "ocamlfind core base ounit qcheck react ppx_deriving"

make test

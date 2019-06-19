#!/bin/sh

OCAML_VERSION=4.08.0

sudo apt install m4

echo OCAML_VERSION=$OCAML_VERSION >  .travis-ocaml.env
echo OPAM_SWITCH=$OCAML_VERSION   >> .travis-ocaml.env

opam --version
ocaml -version

opam install dune ocamlfind core base ounit qcheck react ppx_deriving

make test

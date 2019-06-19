#!/bin/sh

echo "yes" | add-apt-repository ppa:avsm/ppa
apt -qq update
apt -qq install opam

opam --version

opam init -a
eval $(opam env)
opam install dune ocamlfind core base ounit qcheck react ppx_deriving

ocaml -version

make test

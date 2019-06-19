#!/bin/sh

echo "yes" | sudo add-apt-repository ppa:avsm/ppa
sudo apt -qq update
sudo apt -qq install opam

opam --version

opam init -a
eval $(opam env)
opam install dune ocamlfind core base ounit qcheck react ppx_deriving

ocaml -version

make test

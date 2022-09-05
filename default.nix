{ nixpkgs ? import <nixpkgs> {  } }:
 
let
  pkgs = [
    nixpkgs.gcc nixpkgs.clang
    nixpkgs.gdb
    nixpkgs.flex nixpkgs.bison
    nixpkgs.gnumake

    nixpkgs.python310
    nixpkgs.python310Packages.urwid

    nixpkgs.xspim nixpkgs.qtspim
    nixpkgs.spike
  ];
 
in
  nixpkgs.stdenv.mkDerivation {
    name = "env";
    buildInputs = pkgs;
  }

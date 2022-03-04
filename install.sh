#! /usr/bin/env bash

installTools() {
  sudo chmod +x ./scripts/tools/*
  cp -rv ./scripts/tools/* $HOME/.local/bin/
}

compileBinaries() {
  cd ./source/
  mkdir ../bin
  rustc ./expertc/src/main.rs -o ../bin/expertc > /dev/null
  gcc ./dedit/src/dedit.c -o ../bin/dedit
  cd ..
  clear
}

installBinaries(){
  cd ./source
  sudo cp -rv ../bin/expertc /usr/local/bin
  sudo cp -rv ../bin/dedit /usr/local/bin
  rm -f ./bin/*
  cd ..
}

printf "Starting...\n"


install() {
  compileBinaries && printf "\nCompiled Binaries\n\n"
  installTools && printf "Installed Scripts\n\n"
  installBinaries && printf "Installed Biniares\n"
}

install

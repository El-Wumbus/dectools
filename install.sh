#! /usr/bin/env bash

installTools() {
  sudo chmod +x ./scripts/shell/tools/*
  cp -rv ./scripts/shell/tools/* $HOME/.local/bin/
}

compileBinaries() {
  cd ./source/
  mkdir ../bin
  rustc ./expertc/src/main.rs -o ../bin/expertc >/dev/null
  gcc ./dedit/src/dedit.c -o ../bin/dedit
  cd ..
  clear
}

installBinaries() {
  cd ./source
  sudo cp -rv ../bin/expertc /usr/local/bin
  sudo cp -rv ../bin/dedit /usr/local/bin
  rm -f ./bin/*
  cd ..
}

pythonDependencies() {
  pip install -r ./requirements.txt
}

installPythonScripts() {
  sudo chmod +x ./scripts/python/tools/*
  cp -rv ./scripts/python/tools/*
}

printf "Starting...\n"

install() {
  compileBinaries && printf "\nBinaries Compiled\n\n"
  installTools && printf "Shell scripts installed\n\n"
  pythonDependencies && printf "python dependencies installed/n/n"
  installPythonScripts && printf "python scripts installed"
  installBinaries && printf "Biniares Installed\n"
}

read -rp "Do you want to continue? [Y/n] " yn
case $yn in
[Yy]*) install ;;
[Nn]*) exit 0 ;;
"") install ;;
esac

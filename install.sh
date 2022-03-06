#! /usr/bin/env bash
verNum="0.1.0"
binlocaton="/usr/local/bin"
scriptlocation="$HOME/.local/bin/"

installTools() {
  sudo chmod +x ./scripts/shell/tools/*
  cp -rv ./scripts/shell/tools/* $HOME/.local/bin/
}

compileBinaries() {
  cd ./source/ || exit
  mkdir ../bin
  rustc ./expertc/src/main.rs -o ../bin/expertc >/dev/null
  cd ..
  clear
}

installBinaries() {
  cd ./source || exit
  sudo cp -rv ../bin/expertc /usr/local/bin
  rm -f ./bin
  cd ..
}

pythonDependencies() {
  pip install -r ./requirements.txt
}

installPythonScripts() {
  sudo chmod +x ./scripts/python/tools/*
  cp -rv ./scripts/python/tools/* $HOME/.local/bin/
}

printf "Starting...\n"

install() {
  compileBinaries && printf "\nBinaries Compiled\n\n"
  installTools && printf "Shell scripts installed\n\n"
  pythonDependencies && printf "python dependencies installed \n\n"
  installPythonScripts && printf "python scripts installed\n\n"
  installBinaries && printf "Biniares Installed\n"
  clear
  printf "\n compiled binares have been moved to %s, scripts have been copied to %s ", ${binlocaton}, "${scriptlocation}"
  printf "\nInstalled dectools Version number: %s \n", ${verNum}
}

read -rp "Do you want to continue? [Y/n] " yn
case $yn in
[Yy]*) install ;;
[Nn]*) exit 0 ;;
"") install ;;
esac

#! /usr/bin/env bash
verNum="1.0.0"
binlocaton="/usr/local/bin"
scriptlocation="$HOME/.local/bin/"

installTools() {
  sudo chmod +x ./scripts/shell/tools/*
  cp -rv ./scripts/shell/tools/* "$HOME"/.local/bin/
}

installBinaries() {
  sudo cp -rv ../Linux/binaries/*
  cd ..
}

pythonDependencies() {
  pip install -r ./requirements.txt
}

installPythonScripts() {
  sudo chmod +x ./scripts/python/tools/*
  cp -rv ./scripts/python/tools/* "$HOME"/.local/bin/
}

printf "Starting...\n"

install() {
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

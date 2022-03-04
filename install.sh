#!/usr/bin/env bash

installScripts() {
  sudo chmod +x ./scripts/tools/*
  cp -rv ./scripts/tools/* $HOME/.local/bin/
}

compileRust() {
  mkdir binaries
  echo "compiling expertc..."
  rustc ./source/expertc/src/main.rs -o ./binaries/expertc > /dev/null
}

printf "Starting..."


install() {
  installScripts && printf "Installed Scripts"
}

while true; do
  read -pr "WARNING... THIS WILL OVERWRITE SOME OF YOUR CONFIGS!!! Continue?: [y/N]" yesNo
  case $yesNo in
      [Yy]* ) install ;;
      [Nn]* ) exit 0  ;;
      * ) printf "Please answer yes[y] or no[n]." ;;
  esac
done


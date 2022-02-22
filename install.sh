#!/usr/bin/env bash

installTools() {
  sudo chmod +x ./scripts/tools/*
  cp -rv ./scripts/tools/* $HOME/.local/bin/
}

printf "Starting..."


install() {
  installTools && printf "Installed Tools"
}

while true; do
  read -pr "WARNING... THIS WILL OVERWRITE SOME OF YOUR CONFIGS!!! Continue?: [y/N]" yesNo
  case $yesNo in
      [Yy]* ) install ;;
      [Nn]* ) exit 0  ;;
      * ) printf "Please answer yes[y] or no[n]." ;;
  esac
done


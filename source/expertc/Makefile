-include config.mak

all: ./expertc

expertc: ./src/main.rs
	rustc ./src/main.rs -o expertc > /dev/null

install: ./expertc
	sudo cp ./expertc "${HOME}"/.local/bin

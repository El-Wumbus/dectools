-include config.mak

all: ./dedit

install: ./dedit
	gcc ./src/dedit.c -o dedit
	sudo cp -rv ./dedit "${HOME}"/.local/bin

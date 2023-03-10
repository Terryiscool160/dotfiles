all:
	git clone https://git.suckless.org/dwm
	git clone https://git.suckless.org/st

	cp ./st_config.h ./st/config.h

	cp ./dwm_config.h ./dwm/config.h
	
	cp -r -f ./bin ~/
	cp -f ./.xinitrc ~/.xinitrc

	feh --bg-scale ./bin/Background.png

clean:
	rm -rf ./dwm
	rm -rf ./st

install:
	$(MAKE) -C st install
	$(MAKE) -C dwm install

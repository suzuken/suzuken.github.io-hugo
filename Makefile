# THEME:=herring-cove
THEME:=hugo-artists-theme
USER:=suzuken
MSG="rebuilding site $(shell date)"

install:
	go get -v github.com/spf13/hugo
	mkdir -p themes && cd themes && git clone https://github.com/suzuken/herring-cove.git
	git submodule add https://github.com/$(USER)/$(USER).github.io.git public

status:
	git submodule foreach git status

fetch:
	git submodule foreach git fetch origin

server:
	hugo server --theme=$(THEME) --buildDrafts --watch

build:
	hugo --theme=$(THEME)

deploy:
	@echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"
	hugo --theme=$(THEME)
	cd public; git add -A; git commit -m $(MSG); git push origin master

#!make

help: _header
	${info }
	@echo Opciones:
	@echo ---------------------------------------------
	@echo build
	@echo workspace
	@echo clean
	@echo ---------------------------------------------

_header:
	@echo ------
	@echo Jekyll
	@echo ------

build:
	@docker compose build

workspace:
	@docker compose run --service-ports --rm jekyll /bin/sh

clean:
	@docker compose down -v --remove-orphans

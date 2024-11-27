.DEFAULT_GOAL := help

# prende i parametri e li converte
RUN_ARGS := $(wordlist 2,$(words $(MAKECMDGOALS)),$(MAKECMDGOALS))
$(eval $(RUN_ARGS):;@:)

export UID := $(shell id -u)
export GID := $(shell id -g)

# legge il file .env nella stessa cartella
ifneq (,$(wildcard ./dev.env))
    include dev.env
    export
endif

##help: @ Mostra tutti i comandi di questo makefile
help:
	@fgrep -h "##" $(MAKEFILE_LIST)| sort | fgrep -v fgrep | tr -d '##'  | awk 'BEGIN {FS = ":.*?@ "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

##build: @ Builds the document
build:
	arara main.tex

# ##build-standalone: @ Builds a chapter
# chapter:
# 	cd chapters && echo 

chapter4: 
	cd chapters/04 && arara chapter04
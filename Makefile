# Makefile for managing brainome/jupyter development

help: ## This help.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help

# Build the entire jupyter book
build-all: clean ## Build the entire jupyter-book distro
	jupyter-book build . --keep-going --all

# Build the jupyter book
build:  ## Build the jupyter-book incrementally
	jupyter-book build .
	open _build/html/index.html

clean: ## Remove build artifacts
	rm -rf .daimensions.key _build *.csv *.py *.csv.gz *.json .ipynb_checkpoints

deploy: build-all  ## Deploy build to s3
	aws s3 sync _build/html s3://jupyter.brainome.ai/


.PHONY: run
run:
	bundle exec jekyll serve --watch

.PHONY: build
build:
	bundle exec jekyll build

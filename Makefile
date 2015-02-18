.PHONY: run
run:
	bundle exec jekyll serve --watch --baseurl ''

.PHONY: build
build:
	bundle exec jekyll build

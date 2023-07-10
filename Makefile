.PHONY: build

build:
	rm -rf build
	rm -rf docs
	NO_CONTRACTS=true bundle exec middleman build
	mv build docs

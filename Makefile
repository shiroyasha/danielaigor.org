.PHONY: build

build:
	rm -rf build
	rm -rf docs
	NO_CONTRACTS=true bundle exec middleman build
	mv build docs

server:
	bundle exec middleman --bind-address=0.0.0.0 --port 3000

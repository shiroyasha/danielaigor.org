.PHONY: build

setup:
	bundle install

build:
	mv docs/CNAME /tmp/CNAME
	rm -rf build
	rm -rf docs
	NO_CONTRACTS=true bundle exec middleman build
	mv build docs
	mv /tmp/CNAME docs/CNAME

server:
	bundle exec middleman --bind-address=0.0.0.0 --port 3000

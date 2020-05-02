.PHONY: setup release changelog tag

setup:
	pre-commit install

release:
	./semtag ${version} -s ${scope}

changelog:
	git-chglog -o CHANGELOG.md

tag:
	./semtag get

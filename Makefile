.PHONY: lint
lint:
	pylint -j 0 krllint tests --output-format=colorized

.PHONY: test
test:
	coverage run -m unittest
	coverage html --omit="tests*/"
	coverage report --omit="tests*/"

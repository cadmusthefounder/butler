.DEFAULT_GOAL := help

## Don't worry! We've got you covered.
.PHONY: help
help:
	@printf "Usage\n";
	@awk '{ \
			if ($$0 ~ /^.PHONY: [a-zA-Z\-\_0-9]+$$/) { \
				helpCommand = substr($$0, index($$0, ":") + 2); \
				if (helpMessage) { \
					printf "\033[36m%-20s\033[0m %s\n", \
						helpCommand, helpMessage; \
					helpMessage = ""; \
				} \
			} else if ($$0 ~ /^[a-zA-Z\-\_0-9.]+:/) { \
				helpCommand = substr($$0, 0, index($$0, ":")); \
				if (helpMessage) { \
					printf "\033[36m%-20s\033[0m %s\n", \
						helpCommand, helpMessage; \
					helpMessage = ""; \
				} \
			} else if ($$0 ~ /^##/) { \
				if (helpMessage) { \
					helpMessage = helpMessage"\n                     "substr($$0, 3); \
				} else { \
					helpMessage = substr($$0, 3); \
				} \
			} else { \
				if (helpMessage) { \
					print "\n                     "helpMessage"\n" \
				} \
				helpMessage = ""; \
			} \
		}' \
		$(MAKEFILE_LIST)

## -- Test --

## Run tests.
##
.PHONY: test 
test:
	@npm run test

## Get test coverage report.
##
.PHONY: coverage
coverage: test
	@open ./coverage/lcov-report/index.html

## -- Utility --

## Transpile TS files to JS files.
##
.PHONY: transpile 
transpile:
	@npm run build

## Run formatters, linters and tests on staged files.
##
.PHONY: pre-commit
pre-commit:
	@npm run pre-commit

## Write commit messages.
##
.PHONY: commit
commit:
	@npm run commit

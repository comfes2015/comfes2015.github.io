SRC  := jade
DEST := dist

FILES := $(shell find $(SRC) -type f -regex '.*/[^_]*')
JADE := $(filter %.jade,$(FILES))
HTML := $(patsubst $(SRC)/%,$(DEST)/%,$(JADE:.jade=.html))

.PHONY: all
all: $(HTML) bootstrap

$(DEST)/%.html: $(SRC)/%.jade
	jade --out $(dir $@) $<

bootstrap: css/bootstrap.min.css js/bootstrap.min.js
	cp -r css $(DEST)/css
	cp -r js $(DEST)/js


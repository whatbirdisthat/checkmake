# this is a comment

expanded = "$(simple)"
simple := "foo"

clean:
	rm bar
	rm foo

foo: bar
	touch foo

bar:
	touch bar

all: foo

test:
  @echo lolnah

.PHONY: all clean test

.DEFAULT_GOAL: all

ERL ?= erl
DEPS_DIR ?= deps

.PHONY: deps
.PHONY: test
.PHONY: mod

all: deps
	@./rebar deps_dir=$(DEPS_DIR) compile

deps:
	@./rebar deps_dir=$(DEPS_DIR) get-deps

clean:
	@./rebar clean

distclean: clean
	@./rebar delete-deps

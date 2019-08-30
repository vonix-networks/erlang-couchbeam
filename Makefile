REBAR=~/.cache/rebar3/bin/rebar3

.PHONY=compile
compile: $(REBAR)
	$(REBAR) compile

.PHONY=clean
clean: $(REBAR)
	$(REBAR) clean

.PHONY=dialyzer
dialyzer: $(REBAR)
	$(REBAR) dialyzer

.PHONY=deps
deps: $(REBAR)
	$(REBAR) deps

.PHONY=get-deps
get-deps: $(REBAR)
	$(REBAR) get-deps

.PHONY=xref
xref: $(REBAR)
	$(REBAR) xref

$(REBAR):
	wget https://s3.amazonaws.com/rebar3/rebar3 && chmod +x rebar3
	./rebar3 local install
	rm rebar3

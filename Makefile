REBAR=~/.cache/rebar3/bin/rebar3

.PHONY=compile
compile: $(REBAR)
	$(REBAR) compile

.PHONY=clean
clean: $(REBAR)
	$(REBAR) clean

dialyzer: $(REBAR)
	$(REBAR) dialyzer

$(REBAR):
	wget https://s3.amazonaws.com/rebar3/rebar3 && chmod +x rebar3
	./rebar3 local install
	rm rebar3

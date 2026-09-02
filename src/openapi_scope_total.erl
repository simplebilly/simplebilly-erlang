-module(openapi_scope_total).

-export([encode/1]).

-export_type([openapi_scope_total/0]).

-type openapi_scope_total() ::
    #{ 'scope' := binary(),
       'tco2e' := binary()
     }.

encode(#{ 'scope' := Scope,
          'tco2e' := Tco2e
        }) ->
    #{ 'scope' => Scope,
       'tco2e' => Tco2e
     }.

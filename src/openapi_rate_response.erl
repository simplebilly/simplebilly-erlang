-module(openapi_rate_response).

-export([encode/1]).

-export_type([openapi_rate_response/0]).

-type openapi_rate_response() ::
    #{ 'rates' := list()
     }.

encode(#{ 'rates' := Rates
        }) ->
    #{ 'rates' => Rates
     }.

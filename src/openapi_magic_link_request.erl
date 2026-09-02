-module(openapi_magic_link_request).

-export([encode/1]).

-export_type([openapi_magic_link_request/0]).

-type openapi_magic_link_request() ::
    #{ 'email' := binary()
     }.

encode(#{ 'email' := Email
        }) ->
    #{ 'email' => Email
     }.

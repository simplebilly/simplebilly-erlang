-module(openapi_remove_user_request).

-export([encode/1]).

-export_type([openapi_remove_user_request/0]).

-type openapi_remove_user_request() ::
    #{ 'email' := binary()
     }.

encode(#{ 'email' := Email
        }) ->
    #{ 'email' => Email
     }.

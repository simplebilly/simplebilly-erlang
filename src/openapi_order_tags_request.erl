-module(openapi_order_tags_request).

-export([encode/1]).

-export_type([openapi_order_tags_request/0]).

-type openapi_order_tags_request() ::
    #{ 'tags' := list()
     }.

encode(#{ 'tags' := Tags
        }) ->
    #{ 'tags' => Tags
     }.

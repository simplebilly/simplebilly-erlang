-module(openapi_delivery_date_status_update).

-export([encode/1]).

-export_type([openapi_delivery_date_status_update/0]).

-type openapi_delivery_date_status_update() ::
    #{ 'status' := binary()
     }.

encode(#{ 'status' := Status
        }) ->
    #{ 'status' => Status
     }.

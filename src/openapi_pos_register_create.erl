-module(openapi_pos_register_create).

-export([encode/1]).

-export_type([openapi_pos_register_create/0]).

-type openapi_pos_register_create() ::
    #{ 'name' := binary(),
       'status' => openapi_pos_register_status:openapi_pos_register_status()
     }.

encode(#{ 'name' := Name,
          'status' := Status
        }) ->
    #{ 'name' => Name,
       'status' => Status
     }.

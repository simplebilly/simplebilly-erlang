-module(openapi_pos_register).

-export([encode/1]).

-export_type([openapi_pos_register/0]).

-type openapi_pos_register() ::
    #{ 'name' := binary(),
       'status' => openapi_pos_register_status:openapi_pos_register_status()
     }.

encode(#{ 'name' := Name,
          'status' := Status
        }) ->
    #{ 'name' => Name,
       'status' => Status
     }.

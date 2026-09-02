-module(openapi_pos_table).

-export([encode/1]).

-export_type([openapi_pos_table/0]).

-type openapi_pos_table() ::
    #{ 'currentOrderNumber' => binary(),
       'name' := binary(),
       'status' => openapi_pos_table_status:openapi_pos_table_status()
     }.

encode(#{ 'currentOrderNumber' := CurrentOrderNumber,
          'name' := Name,
          'status' := Status
        }) ->
    #{ 'currentOrderNumber' => CurrentOrderNumber,
       'name' => Name,
       'status' => Status
     }.

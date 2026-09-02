-module(openapi_datev_import_response).

-export([encode/1]).

-export_type([openapi_datev_import_response/0]).

-type openapi_datev_import_response() ::
    #{ 'count' := integer(),
       'filename' := binary(),
       'rows' := list()
     }.

encode(#{ 'count' := Count,
          'filename' := Filename,
          'rows' := Rows
        }) ->
    #{ 'count' => Count,
       'filename' => Filename,
       'rows' => Rows
     }.

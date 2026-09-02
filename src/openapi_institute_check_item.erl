-module(openapi_institute_check_item).

-export([encode/1]).

-export_type([openapi_institute_check_item/0]).

-type openapi_institute_check_item() ::
    #{ 'exists' := boolean(),
       'name' := binary(),
       'source' := binary()
     }.

encode(#{ 'exists' := Exists,
          'name' := Name,
          'source' := Source
        }) ->
    #{ 'exists' => Exists,
       'name' => Name,
       'source' => Source
     }.

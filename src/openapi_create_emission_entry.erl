-module(openapi_create_emission_entry).

-export([encode/1]).

-export_type([openapi_create_emission_entry/0]).

-type openapi_create_emission_entry() ::
    #{ 'activity_value' := binary(),
       'category_id' := binary(),
       'description' := binary(),
       'method' := binary(),
       'scope' := binary(),
       'unit' := binary(),
       'year' := integer()
     }.

encode(#{ 'activity_value' := ActivityValue,
          'category_id' := CategoryId,
          'description' := Description,
          'method' := Method,
          'scope' := Scope,
          'unit' := Unit,
          'year' := Year
        }) ->
    #{ 'activity_value' => ActivityValue,
       'category_id' => CategoryId,
       'description' => Description,
       'method' => Method,
       'scope' => Scope,
       'unit' => Unit,
       'year' => Year
     }.

-module(openapi_emission_entry).

-export([encode/1]).

-export_type([openapi_emission_entry/0]).

-type openapi_emission_entry() ::
    #{ 'activityValue' := binary(),
       'categoryId' := binary(),
       'description' := binary(),
       'efSource' := binary(),
       'efVersion' := binary(),
       'method' := openapi_emission_method:openapi_emission_method(),
       'scope' := openapi_ghg_scope:openapi_ghg_scope(),
       'tco2e' := binary(),
       'unit' := binary(),
       'updatedAt' => openapi_date_time:openapi_date_time(),
       'year' := integer()
     }.

encode(#{ 'activityValue' := ActivityValue,
          'categoryId' := CategoryId,
          'description' := Description,
          'efSource' := EfSource,
          'efVersion' := EfVersion,
          'method' := Method,
          'scope' := Scope,
          'tco2e' := Tco2e,
          'unit' := Unit,
          'updatedAt' := UpdatedAt,
          'year' := Year
        }) ->
    #{ 'activityValue' => ActivityValue,
       'categoryId' => CategoryId,
       'description' => Description,
       'efSource' => EfSource,
       'efVersion' => EfVersion,
       'method' => Method,
       'scope' => Scope,
       'tco2e' => Tco2e,
       'unit' => Unit,
       'updatedAt' => UpdatedAt,
       'year' => Year
     }.

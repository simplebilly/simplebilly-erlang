-module(openapi_year_total).

-export([encode/1]).

-export_type([openapi_year_total/0]).

-type openapi_year_total() ::
    #{ 'tco2e' := binary(),
       'year' := integer()
     }.

encode(#{ 'tco2e' := Tco2e,
          'year' := Year
        }) ->
    #{ 'tco2e' => Tco2e,
       'year' => Year
     }.

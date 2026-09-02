-module(openapi_category_total).

-export([encode/1]).

-export_type([openapi_category_total/0]).

-type openapi_category_total() ::
    #{ 'category_id' := binary(),
       'share_pct' := float(),
       'tco2e' := binary()
     }.

encode(#{ 'category_id' := CategoryId,
          'share_pct' := SharePct,
          'tco2e' := Tco2e
        }) ->
    #{ 'category_id' => CategoryId,
       'share_pct' => SharePct,
       'tco2e' => Tco2e
     }.

-module(openapi_quartile_band).

-export([encode/1]).

-export_type([openapi_quartile_band/0]).

-type openapi_quartile_band() ::
    #{ 'female_share_pct' := float(),
       'hourly_median' := binary(),
       'male_share_pct' := float(),
       'quartile' := binary()
     }.

encode(#{ 'female_share_pct' := FemaleSharePct,
          'hourly_median' := HourlyMedian,
          'male_share_pct' := MaleSharePct,
          'quartile' := Quartile
        }) ->
    #{ 'female_share_pct' => FemaleSharePct,
       'hourly_median' => HourlyMedian,
       'male_share_pct' => MaleSharePct,
       'quartile' => Quartile
     }.

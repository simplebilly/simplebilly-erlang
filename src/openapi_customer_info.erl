-module(openapi_customer_info).

-export([encode/1]).

-export_type([openapi_customer_info/0]).

-type openapi_customer_info() ::
    #{ 'annual_volume' := integer(),
       'is_registered' := boolean()
     }.

encode(#{ 'annual_volume' := AnnualVolume,
          'is_registered' := IsRegistered
        }) ->
    #{ 'annual_volume' => AnnualVolume,
       'is_registered' => IsRegistered
     }.

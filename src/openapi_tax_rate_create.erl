-module(openapi_tax_rate_create).

-export([encode/1]).

-export_type([openapi_tax_rate_create/0]).

-type openapi_tax_rate_create() ::
    #{ 'countryCode' := binary(),
       'effectiveFrom' => calendar:date(),
       'isDefault' := boolean(),
       'name' := binary(),
       'ratePercent' := integer()
     }.

encode(#{ 'countryCode' := CountryCode,
          'effectiveFrom' := EffectiveFrom,
          'isDefault' := IsDefault,
          'name' := Name,
          'ratePercent' := RatePercent
        }) ->
    #{ 'countryCode' => CountryCode,
       'effectiveFrom' => EffectiveFrom,
       'isDefault' => IsDefault,
       'name' => Name,
       'ratePercent' => RatePercent
     }.

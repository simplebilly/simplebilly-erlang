-module(openapi_hebesatz_lookup).

-export([encode/1]).

-export_type([openapi_hebesatz_lookup/0]).

-type openapi_hebesatz_lookup() ::
    #{ 'bundesland' := binary(),
       'country_code' := binary(),
       'gemeinde_name' := binary(),
       'gemeindeschluessel' := binary(),
       'hebesatz_gewerbesteuer' := float(),
       'hebesatz_grundsteuer_b' => float(),
       'jahr' := integer(),
       'landkreis' => binary(),
       'valid_from' := binary(),
       'valid_to' => binary()
     }.

encode(#{ 'bundesland' := Bundesland,
          'country_code' := CountryCode,
          'gemeinde_name' := GemeindeName,
          'gemeindeschluessel' := Gemeindeschluessel,
          'hebesatz_gewerbesteuer' := HebesatzGewerbesteuer,
          'hebesatz_grundsteuer_b' := HebesatzGrundsteuerB,
          'jahr' := Jahr,
          'landkreis' := Landkreis,
          'valid_from' := ValidFrom,
          'valid_to' := ValidTo
        }) ->
    #{ 'bundesland' => Bundesland,
       'country_code' => CountryCode,
       'gemeinde_name' => GemeindeName,
       'gemeindeschluessel' => Gemeindeschluessel,
       'hebesatz_gewerbesteuer' => HebesatzGewerbesteuer,
       'hebesatz_grundsteuer_b' => HebesatzGrundsteuerB,
       'jahr' => Jahr,
       'landkreis' => Landkreis,
       'valid_from' => ValidFrom,
       'valid_to' => ValidTo
     }.

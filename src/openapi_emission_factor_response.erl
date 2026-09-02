-module(openapi_emission_factor_response).

-export([encode/1]).

-export_type([openapi_emission_factor_response/0]).

-type openapi_emission_factor_response() ::
    #{ 'category_id' := binary(),
       'kg_co2e_per_unit' := float(),
       'name_de' := binary(),
       'source' := binary(),
       'unit' := binary(),
       'version' := binary()
     }.

encode(#{ 'category_id' := CategoryId,
          'kg_co2e_per_unit' := KgCo2ePerUnit,
          'name_de' := NameDe,
          'source' := Source,
          'unit' := Unit,
          'version' := Version
        }) ->
    #{ 'category_id' => CategoryId,
       'kg_co2e_per_unit' => KgCo2ePerUnit,
       'name_de' => NameDe,
       'source' => Source,
       'unit' => Unit,
       'version' => Version
     }.

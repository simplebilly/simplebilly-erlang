-module(openapi_create_emission_target).

-export([encode/1]).

-export_type([openapi_create_emission_target/0]).

-type openapi_create_emission_target() ::
    #{ 'base_value' := binary(),
       'base_year' := integer(),
       'description' := binary(),
       'scope' := binary(),
       'target_value' := binary(),
       'target_year' := integer()
     }.

encode(#{ 'base_value' := BaseValue,
          'base_year' := BaseYear,
          'description' := Description,
          'scope' := Scope,
          'target_value' := TargetValue,
          'target_year' := TargetYear
        }) ->
    #{ 'base_value' => BaseValue,
       'base_year' => BaseYear,
       'description' => Description,
       'scope' => Scope,
       'target_value' => TargetValue,
       'target_year' => TargetYear
     }.

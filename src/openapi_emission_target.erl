-module(openapi_emission_target).

-export([encode/1]).

-export_type([openapi_emission_target/0]).

-type openapi_emission_target() ::
    #{ 'baseValue' := binary(),
       'baseYear' := integer(),
       'description' := binary(),
       'scope' := openapi_emission_target_scope:openapi_emission_target_scope(),
       'targetValue' := binary(),
       'targetYear' := integer(),
       'updatedAt' => openapi_date_time:openapi_date_time()
     }.

encode(#{ 'baseValue' := BaseValue,
          'baseYear' := BaseYear,
          'description' := Description,
          'scope' := Scope,
          'targetValue' := TargetValue,
          'targetYear' := TargetYear,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'baseValue' => BaseValue,
       'baseYear' => BaseYear,
       'description' => Description,
       'scope' => Scope,
       'targetValue' => TargetValue,
       'targetYear' => TargetYear,
       'updatedAt' => UpdatedAt
     }.

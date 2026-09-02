-module(openapi_compliance_training_create).

-export([encode/1]).

-export_type([openapi_compliance_training_create/0]).

-type openapi_compliance_training_create() ::
    #{ 'assignable' => boolean(),
       'code' => binary(),
       'description' => binary(),
       'passScore' => integer(),
       'pluginPlatform' => binary(),
       'source' => openapi_training_source:openapi_training_source(),
       'title' => binary(),
       'validityMonths' => integer()
     }.

encode(#{ 'assignable' := Assignable,
          'code' := Code,
          'description' := Description,
          'passScore' := PassScore,
          'pluginPlatform' := PluginPlatform,
          'source' := Source,
          'title' := Title,
          'validityMonths' := ValidityMonths
        }) ->
    #{ 'assignable' => Assignable,
       'code' => Code,
       'description' => Description,
       'passScore' => PassScore,
       'pluginPlatform' => PluginPlatform,
       'source' => Source,
       'title' => Title,
       'validityMonths' => ValidityMonths
     }.

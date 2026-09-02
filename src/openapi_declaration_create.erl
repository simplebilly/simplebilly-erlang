-module(openapi_declaration_create).

-export([encode/1]).

-export_type([openapi_declaration_create/0]).

-type openapi_declaration_create() ::
    #{ 'declarationType' => openapi_declaration_type:openapi_declaration_type(),
       'isCurrent' => boolean(),
       'text' => binary(),
       'validFrom' => calendar:date(),
       'version' => binary()
     }.

encode(#{ 'declarationType' := DeclarationType,
          'isCurrent' := IsCurrent,
          'text' := Text,
          'validFrom' := ValidFrom,
          'version' := Version
        }) ->
    #{ 'declarationType' => DeclarationType,
       'isCurrent' => IsCurrent,
       'text' => Text,
       'validFrom' => ValidFrom,
       'version' => Version
     }.

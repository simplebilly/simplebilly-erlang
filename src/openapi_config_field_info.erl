-module(openapi_config_field_info).

-export([encode/1]).

-export_type([openapi_config_field_info/0]).

-type openapi_config_field_info() ::
    #{ 'kind' := openapi_config_field_kind:openapi_config_field_kind(),
       'label' := binary(),
       'name' := binary(),
       'placeholder' => binary(),
       'required' := boolean()
     }.

encode(#{ 'kind' := Kind,
          'label' := Label,
          'name' := Name,
          'placeholder' := Placeholder,
          'required' := Required
        }) ->
    #{ 'kind' => Kind,
       'label' => Label,
       'name' => Name,
       'placeholder' => Placeholder,
       'required' => Required
     }.

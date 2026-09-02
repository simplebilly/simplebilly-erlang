-module(openapi_update_automation).

-export([encode/1]).

-export_type([openapi_update_automation/0]).

-type openapi_update_automation() ::
    #{ 'config' => openapi_any_type:openapi_any_type(),
       'enabled' => boolean()
     }.

encode(#{ 'config' := Config,
          'enabled' := Enabled
        }) ->
    #{ 'config' => Config,
       'enabled' => Enabled
     }.

-module(openapi_workflow_enabled_update).

-export([encode/1]).

-export_type([openapi_workflow_enabled_update/0]).

-type openapi_workflow_enabled_update() ::
    #{ 'enabled' := boolean()
     }.

encode(#{ 'enabled' := Enabled
        }) ->
    #{ 'enabled' => Enabled
     }.

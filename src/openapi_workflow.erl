-module(openapi_workflow).

-export([encode/1]).

-export_type([openapi_workflow/0]).

-type openapi_workflow() ::
    #{ 'actions' => openapi_any_type:openapi_any_type(),
       'enabled' => boolean(),
       'name' := binary(),
       'triggerEvent' := binary()
     }.

encode(#{ 'actions' := Actions,
          'enabled' := Enabled,
          'name' := Name,
          'triggerEvent' := TriggerEvent
        }) ->
    #{ 'actions' => Actions,
       'enabled' => Enabled,
       'name' => Name,
       'triggerEvent' => TriggerEvent
     }.

-module(openapi_workflow_action).

-export([encode/1]).

-export_type([openapi_workflow_action/0]).

-type openapi_workflow_action() ::
    #{ 'action_type' := binary(),
       'body' => binary(),
       'subject' => binary()
     }.

encode(#{ 'action_type' := ActionType,
          'body' := Body,
          'subject' := Subject
        }) ->
    #{ 'action_type' => ActionType,
       'body' => Body,
       'subject' => Subject
     }.

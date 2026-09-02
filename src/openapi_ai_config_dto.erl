-module(openapi_ai_config_dto).

-export([encode/1]).

-export_type([openapi_ai_config_dto/0]).

-type openapi_ai_config_dto() ::
    #{ 'auto_reply' => boolean(),
       'max_tool_calls' => integer(),
       'model' := binary(),
       'name' := binary(),
       'provider' := binary(),
       'system_prompt' => binary(),
       'trigger_on' => list()
     }.

encode(#{ 'auto_reply' := AutoReply,
          'max_tool_calls' := MaxToolCalls,
          'model' := Model,
          'name' := Name,
          'provider' := Provider,
          'system_prompt' := SystemPrompt,
          'trigger_on' := TriggerOn
        }) ->
    #{ 'auto_reply' => AutoReply,
       'max_tool_calls' => MaxToolCalls,
       'model' => Model,
       'name' => Name,
       'provider' => Provider,
       'system_prompt' => SystemPrompt,
       'trigger_on' => TriggerOn
     }.

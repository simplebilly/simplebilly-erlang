-module(openapi_ai_suggestion).

-export([encode/1]).

-export_type([openapi_ai_suggestion/0]).

-type openapi_ai_suggestion() ::
    #{ 'confidence' := float(),
       'reasoning' := binary(),
       'suggested_priority' => binary(),
       'suggested_reply' := binary(),
       'suggested_status' => binary(),
       'tool_calls' := list()
     }.

encode(#{ 'confidence' := Confidence,
          'reasoning' := Reasoning,
          'suggested_priority' := SuggestedPriority,
          'suggested_reply' := SuggestedReply,
          'suggested_status' := SuggestedStatus,
          'tool_calls' := ToolCalls
        }) ->
    #{ 'confidence' => Confidence,
       'reasoning' => Reasoning,
       'suggested_priority' => SuggestedPriority,
       'suggested_reply' => SuggestedReply,
       'suggested_status' => SuggestedStatus,
       'tool_calls' => ToolCalls
     }.

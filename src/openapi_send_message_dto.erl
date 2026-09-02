-module(openapi_send_message_dto).

-export([encode/1]).

-export_type([openapi_send_message_dto/0]).

-type openapi_send_message_dto() ::
    #{ 'body' := binary(),
       'is_internal' => boolean()
     }.

encode(#{ 'body' := Body,
          'is_internal' := IsInternal
        }) ->
    #{ 'body' => Body,
       'is_internal' => IsInternal
     }.

-module(openapi_create_channel_dto).

-export([encode/1]).

-export_type([openapi_create_channel_dto/0]).

-type openapi_create_channel_dto() ::
    #{ 'channel_type' := binary(),
       'config' := openapi_any_type:openapi_any_type(),
       'name' := binary()
     }.

encode(#{ 'channel_type' := ChannelType,
          'config' := Config,
          'name' := Name
        }) ->
    #{ 'channel_type' => ChannelType,
       'config' => Config,
       'name' => Name
     }.

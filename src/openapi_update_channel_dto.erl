-module(openapi_update_channel_dto).

-export([encode/1]).

-export_type([openapi_update_channel_dto/0]).

-type openapi_update_channel_dto() ::
    #{ 'config' => openapi_any_type:openapi_any_type(),
       'is_active' => boolean(),
       'name' => binary()
     }.

encode(#{ 'config' := Config,
          'is_active' := IsActive,
          'name' := Name
        }) ->
    #{ 'config' => Config,
       'is_active' => IsActive,
       'name' => Name
     }.

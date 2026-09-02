-module(openapi_support_channel).

-export([encode/1]).

-export_type([openapi_support_channel/0]).

-type openapi_support_channel() ::
    #{ 'channelType' := openapi_support_channel_type:openapi_support_channel_type(),
       'config' := openapi_any_type:openapi_any_type(),
       'createdAt' := openapi_date_time:openapi_date_time(),
       'isActive' := boolean(),
       'name' := binary(),
       'tenantId' := openapi_u_uid:openapi_u_uid(),
       'updatedAt' => openapi_date_time:openapi_date_time()
     }.

encode(#{ 'channelType' := ChannelType,
          'config' := Config,
          'createdAt' := CreatedAt,
          'isActive' := IsActive,
          'name' := Name,
          'tenantId' := TenantId,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'channelType' => ChannelType,
       'config' => Config,
       'createdAt' => CreatedAt,
       'isActive' => IsActive,
       'name' => Name,
       'tenantId' => TenantId,
       'updatedAt' => UpdatedAt
     }.

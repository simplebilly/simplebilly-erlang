-module(openapi_marketplace_connection).

-export([encode/1]).

-export_type([openapi_marketplace_connection/0]).

-type openapi_marketplace_connection() ::
    #{ 'config' := openapi_any_type:openapi_any_type(),
       'connection_id' := binary(),
       'connector_type' := openapi_connector_type:openapi_connector_type(),
       'created_at' := openapi_date_time:openapi_date_time(),
       'is_active' := boolean(),
       'label' := binary(),
       'last_sync_at' => openapi_date_time:openapi_date_time(),
       'platform' := binary(),
       'platform_user_id' => binary(),
       'scopes' => binary(),
       'shop_domain' => binary(),
       'shop_name' => binary(),
       'sync_status' => binary(),
       'tenant_id' := openapi_u_uid:openapi_u_uid(),
       'updated_at' => openapi_date_time:openapi_date_time()
     }.

encode(#{ 'config' := Config,
          'connection_id' := ConnectionId,
          'connector_type' := ConnectorType,
          'created_at' := CreatedAt,
          'is_active' := IsActive,
          'label' := Label,
          'last_sync_at' := LastSyncAt,
          'platform' := Platform,
          'platform_user_id' := PlatformUserId,
          'scopes' := Scopes,
          'shop_domain' := ShopDomain,
          'shop_name' := ShopName,
          'sync_status' := SyncStatus,
          'tenant_id' := TenantId,
          'updated_at' := UpdatedAt
        }) ->
    #{ 'config' => Config,
       'connection_id' => ConnectionId,
       'connector_type' => ConnectorType,
       'created_at' => CreatedAt,
       'is_active' => IsActive,
       'label' => Label,
       'last_sync_at' => LastSyncAt,
       'platform' => Platform,
       'platform_user_id' => PlatformUserId,
       'scopes' => Scopes,
       'shop_domain' => ShopDomain,
       'shop_name' => ShopName,
       'sync_status' => SyncStatus,
       'tenant_id' => TenantId,
       'updated_at' => UpdatedAt
     }.

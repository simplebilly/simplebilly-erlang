-module(openapi_payment_gateway).

-export([encode/1]).

-export_type([openapi_payment_gateway/0]).

-type openapi_payment_gateway() ::
    #{ 'config' := openapi_any_type:openapi_any_type(),
       'createdAt' := openapi_date_time:openapi_date_time(),
       'deletedAt' => openapi_date_time:openapi_date_time(),
       'enabled' := boolean(),
       'gatewayId' := binary(),
       'gatewayType' := openapi_gateway_type:openapi_gateway_type(),
       'label' := binary(),
       'tenantId' := openapi_u_uid:openapi_u_uid(),
       'updatedAt' => openapi_date_time:openapi_date_time()
     }.

encode(#{ 'config' := Config,
          'createdAt' := CreatedAt,
          'deletedAt' := DeletedAt,
          'enabled' := Enabled,
          'gatewayId' := GatewayId,
          'gatewayType' := GatewayType,
          'label' := Label,
          'tenantId' := TenantId,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'config' => Config,
       'createdAt' => CreatedAt,
       'deletedAt' => DeletedAt,
       'enabled' => Enabled,
       'gatewayId' => GatewayId,
       'gatewayType' => GatewayType,
       'label' => Label,
       'tenantId' => TenantId,
       'updatedAt' => UpdatedAt
     }.

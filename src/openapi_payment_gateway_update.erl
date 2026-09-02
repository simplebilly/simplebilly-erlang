-module(openapi_payment_gateway_update).

-export([encode/1]).

-export_type([openapi_payment_gateway_update/0]).

-type openapi_payment_gateway_update() ::
    #{ 'config' => openapi_any_type:openapi_any_type(),
       'createdAt' => openapi_date_time:openapi_date_time(),
       'deletedAt' => openapi_date_time:openapi_date_time(),
       'enabled' => boolean(),
       'gatewayType' => openapi_gateway_type:openapi_gateway_type(),
       'label' => binary(),
       'updatedAt' => openapi_date_time:openapi_date_time()
     }.

encode(#{ 'config' := Config,
          'createdAt' := CreatedAt,
          'deletedAt' := DeletedAt,
          'enabled' := Enabled,
          'gatewayType' := GatewayType,
          'label' := Label,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'config' => Config,
       'createdAt' => CreatedAt,
       'deletedAt' => DeletedAt,
       'enabled' => Enabled,
       'gatewayType' => GatewayType,
       'label' => Label,
       'updatedAt' => UpdatedAt
     }.

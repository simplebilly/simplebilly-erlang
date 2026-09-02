-module(openapi_order_create).

-export([encode/1]).

-export_type([openapi_order_create/0]).

-type openapi_order_create() ::
    #{ 'auditLog' => openapi_any_type:openapi_any_type(),
       'currency' := binary(),
       'customerId' := binary(),
       'externalReference' => binary(),
       'invoiceAddress' => openapi_any_type:openapi_any_type(),
       'items' => openapi_any_type:openapi_any_type(),
       'language' => openapi_language_code:openapi_language_code(),
       'orderStatus' := openapi_order_status:openapi_order_status(),
       'paymentMethod' := openapi_payment_method:openapi_payment_method(),
       'shippingAddress' => openapi_any_type:openapi_any_type(),
       'shippingCost' := binary(),
       'shippingMethod' := binary(),
       'shippingWeight' := binary(),
       'tags' := list(),
       'totalCost' := binary()
     }.

encode(#{ 'auditLog' := AuditLog,
          'currency' := Currency,
          'customerId' := CustomerId,
          'externalReference' := ExternalReference,
          'invoiceAddress' := InvoiceAddress,
          'items' := Items,
          'language' := Language,
          'orderStatus' := OrderStatus,
          'paymentMethod' := PaymentMethod,
          'shippingAddress' := ShippingAddress,
          'shippingCost' := ShippingCost,
          'shippingMethod' := ShippingMethod,
          'shippingWeight' := ShippingWeight,
          'tags' := Tags,
          'totalCost' := TotalCost
        }) ->
    #{ 'auditLog' => AuditLog,
       'currency' => Currency,
       'customerId' => CustomerId,
       'externalReference' => ExternalReference,
       'invoiceAddress' => InvoiceAddress,
       'items' => Items,
       'language' => Language,
       'orderStatus' => OrderStatus,
       'paymentMethod' => PaymentMethod,
       'shippingAddress' => ShippingAddress,
       'shippingCost' => ShippingCost,
       'shippingMethod' => ShippingMethod,
       'shippingWeight' => ShippingWeight,
       'tags' => Tags,
       'totalCost' => TotalCost
     }.

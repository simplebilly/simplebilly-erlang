-module(openapi_product_variant).

-export([encode/1]).

-export_type([openapi_product_variant/0]).

-type openapi_product_variant() ::
    #{ 'barcode' => binary(),
       'imageLink' => binary(),
       'isActive' => boolean(),
       'name' => binary(),
       'optionValues' => openapi_any_type:openapi_any_type(),
       'price' => binary(),
       'priceDelta' => binary(),
       'productId' := openapi_u_uid:openapi_u_uid(),
       'sku' := binary(),
       'stockQuantity' => integer()
     }.

encode(#{ 'barcode' := Barcode,
          'imageLink' := ImageLink,
          'isActive' := IsActive,
          'name' := Name,
          'optionValues' := OptionValues,
          'price' := Price,
          'priceDelta' := PriceDelta,
          'productId' := ProductId,
          'sku' := Sku,
          'stockQuantity' := StockQuantity
        }) ->
    #{ 'barcode' => Barcode,
       'imageLink' => ImageLink,
       'isActive' => IsActive,
       'name' => Name,
       'optionValues' => OptionValues,
       'price' => Price,
       'priceDelta' => PriceDelta,
       'productId' => ProductId,
       'sku' => Sku,
       'stockQuantity' => StockQuantity
     }.

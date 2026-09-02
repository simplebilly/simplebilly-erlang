-module(openapi_current_inventory_value).

-export([encode/1]).

-export_type([openapi_current_inventory_value/0]).

-type openapi_current_inventory_value() ::
    #{ 'history' := list(),
       'product_count' := integer(),
       'total_purchase_value' := binary(),
       'total_sales_value' := binary()
     }.

encode(#{ 'history' := History,
          'product_count' := ProductCount,
          'total_purchase_value' := TotalPurchaseValue,
          'total_sales_value' := TotalSalesValue
        }) ->
    #{ 'history' => History,
       'product_count' => ProductCount,
       'total_purchase_value' => TotalPurchaseValue,
       'total_sales_value' => TotalSalesValue
     }.

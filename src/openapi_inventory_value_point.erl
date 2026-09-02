-module(openapi_inventory_value_point).

-export([encode/1]).

-export_type([openapi_inventory_value_point/0]).

-type openapi_inventory_value_point() ::
    #{ 'product_count' := integer(),
       'recorded_at' := openapi_date_time:openapi_date_time(),
       'total_purchase_value' := binary(),
       'total_sales_value' := binary()
     }.

encode(#{ 'product_count' := ProductCount,
          'recorded_at' := RecordedAt,
          'total_purchase_value' := TotalPurchaseValue,
          'total_sales_value' := TotalSalesValue
        }) ->
    #{ 'product_count' => ProductCount,
       'recorded_at' => RecordedAt,
       'total_purchase_value' => TotalPurchaseValue,
       'total_sales_value' => TotalSalesValue
     }.

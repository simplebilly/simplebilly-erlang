-module(openapi_production_order_costing).

-export([encode/1]).

-export_type([openapi_production_order_costing/0]).

-type openapi_production_order_costing() ::
    #{ 'costPerUnit' := binary(),
       'costSource' := binary(),
       'lines' := list(),
       'marginPerUnit' => binary(),
       'marginPercent' => binary(),
       'materialCostTotal' := binary(),
       'orderNumber' := binary(),
       'productionOrderId' := openapi_u_uid:openapi_u_uid(),
       'quantity' := integer(),
       'salePrice' => binary(),
       'status' := binary()
     }.

encode(#{ 'costPerUnit' := CostPerUnit,
          'costSource' := CostSource,
          'lines' := Lines,
          'marginPerUnit' := MarginPerUnit,
          'marginPercent' := MarginPercent,
          'materialCostTotal' := MaterialCostTotal,
          'orderNumber' := OrderNumber,
          'productionOrderId' := ProductionOrderId,
          'quantity' := Quantity,
          'salePrice' := SalePrice,
          'status' := Status
        }) ->
    #{ 'costPerUnit' => CostPerUnit,
       'costSource' => CostSource,
       'lines' => Lines,
       'marginPerUnit' => MarginPerUnit,
       'marginPercent' => MarginPercent,
       'materialCostTotal' => MaterialCostTotal,
       'orderNumber' => OrderNumber,
       'productionOrderId' => ProductionOrderId,
       'quantity' => Quantity,
       'salePrice' => SalePrice,
       'status' => Status
     }.

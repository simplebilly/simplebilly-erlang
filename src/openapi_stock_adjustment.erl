-module(openapi_stock_adjustment).

-export([encode/1]).

-export_type([openapi_stock_adjustment/0]).

-type openapi_stock_adjustment() ::
    #{ 'batchNumber' => binary(),
       'binLocation' => binary(),
       'expiryDate' => calendar:date(),
       'productId' => openapi_u_uid:openapi_u_uid(),
       'quantity' := integer(),
       'serialNumbers' => list()
     }.

encode(#{ 'batchNumber' := BatchNumber,
          'binLocation' := BinLocation,
          'expiryDate' := ExpiryDate,
          'productId' := ProductId,
          'quantity' := Quantity,
          'serialNumbers' := SerialNumbers
        }) ->
    #{ 'batchNumber' => BatchNumber,
       'binLocation' => BinLocation,
       'expiryDate' => ExpiryDate,
       'productId' => ProductId,
       'quantity' => Quantity,
       'serialNumbers' => SerialNumbers
     }.

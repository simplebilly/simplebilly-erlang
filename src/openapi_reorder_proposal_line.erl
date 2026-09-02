-module(openapi_reorder_proposal_line).

-export([encode/1]).

-export_type([openapi_reorder_proposal_line/0]).

-type openapi_reorder_proposal_line() ::
    #{ 'currentStock' := integer(),
       'maxStock' => integer(),
       'minStock' => integer(),
       'productId' := openapi_u_uid:openapi_u_uid(),
       'productName' := binary(),
       'reorderQuantity' => integer(),
       'sku' := binary(),
       'suggestedQuantity' := integer()
     }.

encode(#{ 'currentStock' := CurrentStock,
          'maxStock' := MaxStock,
          'minStock' := MinStock,
          'productId' := ProductId,
          'productName' := ProductName,
          'reorderQuantity' := ReorderQuantity,
          'sku' := Sku,
          'suggestedQuantity' := SuggestedQuantity
        }) ->
    #{ 'currentStock' => CurrentStock,
       'maxStock' => MaxStock,
       'minStock' => MinStock,
       'productId' => ProductId,
       'productName' => ProductName,
       'reorderQuantity' => ReorderQuantity,
       'sku' => Sku,
       'suggestedQuantity' => SuggestedQuantity
     }.

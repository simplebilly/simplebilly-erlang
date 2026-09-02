-module(openapi_reorder_proposal_response).

-export([encode/1]).

-export_type([openapi_reorder_proposal_response/0]).

-type openapi_reorder_proposal_response() ::
    #{ 'generatedAt' := openapi_date_time:openapi_date_time(),
       'lines' := list(),
       'totalSuggestedQuantity' := integer()
     }.

encode(#{ 'generatedAt' := GeneratedAt,
          'lines' := Lines,
          'totalSuggestedQuantity' := TotalSuggestedQuantity
        }) ->
    #{ 'generatedAt' => GeneratedAt,
       'lines' => Lines,
       'totalSuggestedQuantity' => TotalSuggestedQuantity
     }.

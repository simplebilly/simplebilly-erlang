-module(openapi_packing_queue).

-export([encode/1]).

-export_type([openapi_packing_queue/0]).

-type openapi_packing_queue() ::
    #{ 'items' := list(),
       'page' := integer(),
       'page_size' := integer(),
       'total_count' := integer()
     }.

encode(#{ 'items' := Items,
          'page' := Page,
          'page_size' := PageSize,
          'total_count' := TotalCount
        }) ->
    #{ 'items' => Items,
       'page' => Page,
       'page_size' => PageSize,
       'total_count' => TotalCount
     }.

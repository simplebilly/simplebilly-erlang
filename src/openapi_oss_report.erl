-module(openapi_oss_report).

-export([encode/1]).

-export_type([openapi_oss_report/0]).

-type openapi_oss_report() ::
    #{ 'dependencies' := list(),
       'total_count' := integer()
     }.

encode(#{ 'dependencies' := Dependencies,
          'total_count' := TotalCount
        }) ->
    #{ 'dependencies' => Dependencies,
       'total_count' => TotalCount
     }.

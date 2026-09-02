-module(openapi_job_posting_filter).

-export([encode/1]).

-export_type([openapi_job_posting_filter/0]).

-type openapi_job_posting_filter() ::
    #{ 'page' => integer(),
       'pageSize' => integer(),
       'status' => binary()
     }.

encode(#{ 'page' := Page,
          'pageSize' := PageSize,
          'status' := Status
        }) ->
    #{ 'page' => Page,
       'pageSize' => PageSize,
       'status' => Status
     }.

-module(openapi_application_filter).

-export([encode/1]).

-export_type([openapi_application_filter/0]).

-type openapi_application_filter() ::
    #{ 'page' => integer(),
       'pageSize' => integer(),
       'postingId' => openapi_u_uid:openapi_u_uid(),
       'status' => binary()
     }.

encode(#{ 'page' := Page,
          'pageSize' := PageSize,
          'postingId' := PostingId,
          'status' := Status
        }) ->
    #{ 'page' => Page,
       'pageSize' => PageSize,
       'postingId' => PostingId,
       'status' => Status
     }.

-module(openapi_application_status_dto).

-export([encode/1]).

-export_type([openapi_application_status_dto/0]).

-type openapi_application_status_dto() ::
    #{ 'postingId' => openapi_u_uid:openapi_u_uid(),
       'status' := binary()
     }.

encode(#{ 'postingId' := PostingId,
          'status' := Status
        }) ->
    #{ 'postingId' => PostingId,
       'status' => Status
     }.

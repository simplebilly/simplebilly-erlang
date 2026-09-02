-module(openapi_gdpr_user).

-export([encode/1]).

-export_type([openapi_gdpr_user/0]).

-type openapi_gdpr_user() ::
    #{ 'createdAt' := openapi_date_time:openapi_date_time(),
       'email' := binary(),
       'id' := openapi_u_uid:openapi_u_uid(),
       'name' := binary()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'email' := Email,
          'id' := Id,
          'name' := Name
        }) ->
    #{ 'createdAt' => CreatedAt,
       'email' => Email,
       'id' => Id,
       'name' => Name
     }.

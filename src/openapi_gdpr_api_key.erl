-module(openapi_gdpr_api_key).

-export([encode/1]).

-export_type([openapi_gdpr_api_key/0]).

-type openapi_gdpr_api_key() ::
    #{ 'createdAt' := openapi_date_time:openapi_date_time(),
       'expiresAt' => openapi_date_time:openapi_date_time(),
       'id' := openapi_u_uid:openapi_u_uid(),
       'keyId' := openapi_u_uid:openapi_u_uid(),
       'name' := binary(),
       'revoked' := boolean()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'expiresAt' := ExpiresAt,
          'id' := Id,
          'keyId' := KeyId,
          'name' := Name,
          'revoked' := Revoked
        }) ->
    #{ 'createdAt' => CreatedAt,
       'expiresAt' => ExpiresAt,
       'id' => Id,
       'keyId' => KeyId,
       'name' => Name,
       'revoked' => Revoked
     }.

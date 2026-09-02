-module(openapi_user_profile).

-export([encode/1]).

-export_type([openapi_user_profile/0]).

-type openapi_user_profile() ::
    #{ 'created_at' := openapi_date_time:openapi_date_time(),
       'email' := binary(),
       'email_verified' := boolean(),
       'first_name' := binary(),
       'full_name' := binary(),
       'id' := openapi_u_uid:openapi_u_uid(),
       'last_name' := binary()
     }.

encode(#{ 'created_at' := CreatedAt,
          'email' := Email,
          'email_verified' := EmailVerified,
          'first_name' := FirstName,
          'full_name' := FullName,
          'id' := Id,
          'last_name' := LastName
        }) ->
    #{ 'created_at' => CreatedAt,
       'email' => Email,
       'email_verified' => EmailVerified,
       'first_name' => FirstName,
       'full_name' => FullName,
       'id' => Id,
       'last_name' => LastName
     }.

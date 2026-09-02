-module(openapi_api_response_user_profile_data).

-export([encode/1]).

-export_type([openapi_api_response_user_profile_data/0]).

-type openapi_api_response_user_profile_data() ::
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

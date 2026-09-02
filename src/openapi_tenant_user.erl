-module(openapi_tenant_user).

-export([encode/1]).

-export_type([openapi_tenant_user/0]).

-type openapi_tenant_user() ::
    #{ 'email' := binary(),
       'email_verified' := boolean(),
       'is_active' := boolean(),
       'joined_at' := openapi_date_time:openapi_date_time(),
       'last_login' => openapi_date_time:openapi_date_time(),
       'name' := binary(),
       'permissions' := list(),
       'role' := binary(),
       'user_id' := openapi_u_uid:openapi_u_uid()
     }.

encode(#{ 'email' := Email,
          'email_verified' := EmailVerified,
          'is_active' := IsActive,
          'joined_at' := JoinedAt,
          'last_login' := LastLogin,
          'name' := Name,
          'permissions' := Permissions,
          'role' := Role,
          'user_id' := UserId
        }) ->
    #{ 'email' => Email,
       'email_verified' => EmailVerified,
       'is_active' => IsActive,
       'joined_at' => JoinedAt,
       'last_login' => LastLogin,
       'name' => Name,
       'permissions' => Permissions,
       'role' => Role,
       'user_id' => UserId
     }.

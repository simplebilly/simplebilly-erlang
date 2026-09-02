-module(openapi_update_profile_request).

-export([encode/1]).

-export_type([openapi_update_profile_request/0]).

-type openapi_update_profile_request() ::
    #{ 'avatar_url' => binary(),
       'first_name' => binary(),
       'last_name' => binary(),
       'name' => binary()
     }.

encode(#{ 'avatar_url' := AvatarUrl,
          'first_name' := FirstName,
          'last_name' := LastName,
          'name' := Name
        }) ->
    #{ 'avatar_url' => AvatarUrl,
       'first_name' => FirstName,
       'last_name' => LastName,
       'name' => Name
     }.

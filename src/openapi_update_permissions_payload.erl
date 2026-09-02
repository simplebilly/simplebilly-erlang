-module(openapi_update_permissions_payload).

-export([encode/1]).

-export_type([openapi_update_permissions_payload/0]).

-type openapi_update_permissions_payload() ::
    #{ 'permissions' := list()
     }.

encode(#{ 'permissions' := Permissions
        }) ->
    #{ 'permissions' => Permissions
     }.

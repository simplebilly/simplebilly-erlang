-module(openapi_update_role_payload).

-export([encode/1]).

-export_type([openapi_update_role_payload/0]).

-type openapi_update_role_payload() ::
    #{ 'role' := binary(),
       'sync_permissions' => boolean()
     }.

encode(#{ 'role' := Role,
          'sync_permissions' := SyncPermissions
        }) ->
    #{ 'role' => Role,
       'sync_permissions' => SyncPermissions
     }.

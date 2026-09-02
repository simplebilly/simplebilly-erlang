-module(openapi_team).

-export([encode/1]).

-export_type([openapi_team/0]).

-type openapi_team() ::
    #{ 'created_at' := openapi_date_time:openapi_date_time(),
       'description' => binary(),
       'id' := openapi_u_uid:openapi_u_uid(),
       'name' := binary(),
       'parent_team_id' => openapi_u_uid:openapi_u_uid(),
       'tenant_id' := openapi_u_uid:openapi_u_uid(),
       'updated_at' := openapi_date_time:openapi_date_time()
     }.

encode(#{ 'created_at' := CreatedAt,
          'description' := Description,
          'id' := Id,
          'name' := Name,
          'parent_team_id' := ParentTeamId,
          'tenant_id' := TenantId,
          'updated_at' := UpdatedAt
        }) ->
    #{ 'created_at' => CreatedAt,
       'description' => Description,
       'id' => Id,
       'name' => Name,
       'parent_team_id' => ParentTeamId,
       'tenant_id' => TenantId,
       'updated_at' => UpdatedAt
     }.

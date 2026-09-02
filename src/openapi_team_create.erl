-module(openapi_team_create).

-export([encode/1]).

-export_type([openapi_team_create/0]).

-type openapi_team_create() ::
    #{ 'description' => binary(),
       'name' := binary(),
       'parentTeamId' => openapi_u_uid:openapi_u_uid()
     }.

encode(#{ 'description' := Description,
          'name' := Name,
          'parentTeamId' := ParentTeamId
        }) ->
    #{ 'description' => Description,
       'name' => Name,
       'parentTeamId' => ParentTeamId
     }.

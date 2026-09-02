-module(openapi_customer_group_update).

-export([encode/1]).

-export_type([openapi_customer_group_update/0]).

-type openapi_customer_group_update() ::
    #{ 'description' => binary(),
       'memberIds' => list(),
       'membershipFilter' => binary(),
       'name' => binary()
     }.

encode(#{ 'description' := Description,
          'memberIds' := MemberIds,
          'membershipFilter' := MembershipFilter,
          'name' := Name
        }) ->
    #{ 'description' => Description,
       'memberIds' => MemberIds,
       'membershipFilter' => MembershipFilter,
       'name' => Name
     }.

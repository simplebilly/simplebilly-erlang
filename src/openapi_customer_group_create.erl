-module(openapi_customer_group_create).

-export([encode/1]).

-export_type([openapi_customer_group_create/0]).

-type openapi_customer_group_create() ::
    #{ 'description' => binary(),
       'memberIds' => list(),
       'membershipFilter' => binary(),
       'name' := binary()
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

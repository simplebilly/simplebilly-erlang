-module(openapi_customer_group).

-export([encode/1]).

-export_type([openapi_customer_group/0]).

-type openapi_customer_group() ::
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

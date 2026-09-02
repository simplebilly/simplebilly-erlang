-module(openapi_usage_snapshot).

-export([encode/1]).

-export_type([openapi_usage_snapshot/0]).

-type openapi_usage_snapshot() ::
    #{ 'connectors' := integer(),
       'invoicesThisMonth' := integer(),
       'overageSeats' := integer(),
       'users' := integer()
     }.

encode(#{ 'connectors' := Connectors,
          'invoicesThisMonth' := InvoicesThisMonth,
          'overageSeats' := OverageSeats,
          'users' := Users
        }) ->
    #{ 'connectors' => Connectors,
       'invoicesThisMonth' => InvoicesThisMonth,
       'overageSeats' => OverageSeats,
       'users' => Users
     }.

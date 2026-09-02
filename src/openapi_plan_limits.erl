-module(openapi_plan_limits).

-export([encode/1]).

-export_type([openapi_plan_limits/0]).

-type openapi_plan_limits() ::
    #{ 'maxConnectors' := integer(),
       'maxInvoicesPerMonth' := integer(),
       'maxUsers' := integer(),
       'metered' => maps:map(),
       'paidConnectors' := list()
     }.

encode(#{ 'maxConnectors' := MaxConnectors,
          'maxInvoicesPerMonth' := MaxInvoicesPerMonth,
          'maxUsers' := MaxUsers,
          'metered' := Metered,
          'paidConnectors' := PaidConnectors
        }) ->
    #{ 'maxConnectors' => MaxConnectors,
       'maxInvoicesPerMonth' => MaxInvoicesPerMonth,
       'maxUsers' => MaxUsers,
       'metered' => Metered,
       'paidConnectors' => PaidConnectors
     }.

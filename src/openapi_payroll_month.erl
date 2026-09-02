-module(openapi_payroll_month).

-export([encode/1]).

-export_type([openapi_payroll_month/0]).

-type openapi_payroll_month() ::
    #{ 'gross' := binary(),
       'month' := integer(),
       'net' := binary()
     }.

encode(#{ 'gross' := Gross,
          'month' := Month,
          'net' := Net
        }) ->
    #{ 'gross' => Gross,
       'month' => Month,
       'net' => Net
     }.

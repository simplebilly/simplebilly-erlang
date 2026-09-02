-module(openapi_cashflow_report).

-export([encode/1]).

-export_type([openapi_cashflow_report/0]).

-type openapi_cashflow_report() ::
    #{ 'closing_balance' := float(),
       'financing_cashflow' := float(),
       'investing_cashflow' := float(),
       'net_cashflow' := float(),
       'opening_balance' := float(),
       'operating_cashflow' := float(),
       'period' := binary()
     }.

encode(#{ 'closing_balance' := ClosingBalance,
          'financing_cashflow' := FinancingCashflow,
          'investing_cashflow' := InvestingCashflow,
          'net_cashflow' := NetCashflow,
          'opening_balance' := OpeningBalance,
          'operating_cashflow' := OperatingCashflow,
          'period' := Period
        }) ->
    #{ 'closing_balance' => ClosingBalance,
       'financing_cashflow' => FinancingCashflow,
       'investing_cashflow' => InvestingCashflow,
       'net_cashflow' => NetCashflow,
       'opening_balance' => OpeningBalance,
       'operating_cashflow' => OperatingCashflow,
       'period' => Period
     }.

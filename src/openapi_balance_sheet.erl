-module(openapi_balance_sheet).

-export([encode/1]).

-export_type([openapi_balance_sheet/0]).

-type openapi_balance_sheet() ::
    #{ 'assets' := list(),
       'balanced' := boolean(),
       'equity_liabilities' := list(),
       'total_assets' := binary(),
       'total_equity_liabilities' := binary()
     }.

encode(#{ 'assets' := Assets,
          'balanced' := Balanced,
          'equity_liabilities' := EquityLiabilities,
          'total_assets' := TotalAssets,
          'total_equity_liabilities' := TotalEquityLiabilities
        }) ->
    #{ 'assets' => Assets,
       'balanced' => Balanced,
       'equity_liabilities' => EquityLiabilities,
       'total_assets' => TotalAssets,
       'total_equity_liabilities' => TotalEquityLiabilities
     }.

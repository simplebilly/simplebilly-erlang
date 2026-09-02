-module(openapi_liquidity_position).

-export([encode/1]).

-export_type([openapi_liquidity_position/0]).

-type openapi_liquidity_position() ::
    #{ 'accounts_payable' := float(),
       'accounts_receivable' := float(),
       'cash_and_equivalents' := float(),
       'current_ratio' := float(),
       'quick_ratio' := float(),
       'working_capital' := float()
     }.

encode(#{ 'accounts_payable' := AccountsPayable,
          'accounts_receivable' := AccountsReceivable,
          'cash_and_equivalents' := CashAndEquivalents,
          'current_ratio' := CurrentRatio,
          'quick_ratio' := QuickRatio,
          'working_capital' := WorkingCapital
        }) ->
    #{ 'accounts_payable' => AccountsPayable,
       'accounts_receivable' => AccountsReceivable,
       'cash_and_equivalents' => CashAndEquivalents,
       'current_ratio' => CurrentRatio,
       'quick_ratio' => QuickRatio,
       'working_capital' => WorkingCapital
     }.

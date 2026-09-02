-module(openapi_balance_item).

-export([encode/1]).

-export_type([openapi_balance_item/0]).

-type openapi_balance_item() ::
    #{ 'account' := binary(),
       'account_name' := binary(),
       'amount' := binary()
     }.

encode(#{ 'account' := Account,
          'account_name' := AccountName,
          'amount' := Amount
        }) ->
    #{ 'account' => Account,
       'account_name' => AccountName,
       'amount' => Amount
     }.

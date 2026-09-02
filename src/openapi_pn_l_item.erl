-module(openapi_pn_l_item).

-export([encode/1]).

-export_type([openapi_pn_l_item/0]).

-type openapi_pn_l_item() ::
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

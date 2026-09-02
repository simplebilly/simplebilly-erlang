-module(openapi_account_overview).

-export([encode/1]).

-export_type([openapi_account_overview/0]).

-type openapi_account_overview() ::
    #{ 'account' := binary(),
       'account_name' := binary(),
       'balance' := binary(),
       'credit_total' := binary(),
       'debit_total' := binary()
     }.

encode(#{ 'account' := Account,
          'account_name' := AccountName,
          'balance' := Balance,
          'credit_total' := CreditTotal,
          'debit_total' := DebitTotal
        }) ->
    #{ 'account' => Account,
       'account_name' => AccountName,
       'balance' => Balance,
       'credit_total' => CreditTotal,
       'debit_total' => DebitTotal
     }.

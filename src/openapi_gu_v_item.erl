-module(openapi_gu_v_item).

-export([encode/1]).

-export_type([openapi_gu_v_item/0]).

-type openapi_gu_v_item() ::
    #{ 'account' := binary(),
       'amount' := binary(),
       'name' := binary()
     }.

encode(#{ 'account' := Account,
          'amount' := Amount,
          'name' := Name
        }) ->
    #{ 'account' => Account,
       'amount' => Amount,
       'name' => Name
     }.

-module(openapi_bilanz_item).

-export([encode/1]).

-export_type([openapi_bilanz_item/0]).

-type openapi_bilanz_item() ::
    #{ 'amount' := binary(),
       'konto' := binary(),
       'name' := binary()
     }.

encode(#{ 'amount' := Amount,
          'konto' := Konto,
          'name' := Name
        }) ->
    #{ 'amount' => Amount,
       'konto' => Konto,
       'name' => Name
     }.

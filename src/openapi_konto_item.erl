-module(openapi_konto_item).

-export([encode/1]).

-export_type([openapi_konto_item/0]).

-type openapi_konto_item() ::
    #{ 'anfangsbestand' := binary(),
       'haben_umsatz' := binary(),
       'konto' := binary(),
       'name' := binary(),
       'saldo' := binary(),
       'soll_umsatz' := binary()
     }.

encode(#{ 'anfangsbestand' := Anfangsbestand,
          'haben_umsatz' := HabenUmsatz,
          'konto' := Konto,
          'name' := Name,
          'saldo' := Saldo,
          'soll_umsatz' := SollUmsatz
        }) ->
    #{ 'anfangsbestand' => Anfangsbestand,
       'haben_umsatz' => HabenUmsatz,
       'konto' => Konto,
       'name' => Name,
       'saldo' => Saldo,
       'soll_umsatz' => SollUmsatz
     }.

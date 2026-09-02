-module(openapi_stille_partner_zeile).

-export([encode/1]).

-export_type([openapi_stille_partner_zeile/0]).

-type openapi_stille_partner_zeile() ::
    #{ 'auseinandersetzungsguthaben' := binary(),
       'gewinnanteil' := binary(),
       'gewinnvortrag' := binary(),
       'hinweis' => binary(),
       'instrument_type' := binary(),
       'kest' := binary(),
       'name' := binary(),
       'verlust_verrechnungskonto' := binary(),
       'verlustanteil' := binary()
     }.

encode(#{ 'auseinandersetzungsguthaben' := Auseinandersetzungsguthaben,
          'gewinnanteil' := Gewinnanteil,
          'gewinnvortrag' := Gewinnvortrag,
          'hinweis' := Hinweis,
          'instrument_type' := InstrumentType,
          'kest' := Kest,
          'name' := Name,
          'verlust_verrechnungskonto' := VerlustVerrechnungskonto,
          'verlustanteil' := Verlustanteil
        }) ->
    #{ 'auseinandersetzungsguthaben' => Auseinandersetzungsguthaben,
       'gewinnanteil' => Gewinnanteil,
       'gewinnvortrag' => Gewinnvortrag,
       'hinweis' => Hinweis,
       'instrument_type' => InstrumentType,
       'kest' => Kest,
       'name' => Name,
       'verlust_verrechnungskonto' => VerlustVerrechnungskonto,
       'verlustanteil' => Verlustanteil
     }.

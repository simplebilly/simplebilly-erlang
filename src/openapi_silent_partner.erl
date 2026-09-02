-module(openapi_silent_partner).

-export([encode/1]).

-export_type([openapi_silent_partner/0]).

-type openapi_silent_partner() ::
    #{ 'contractDate' => calendar:date(),
       'einlage' => binary(),
       'gewinnquotePct' => binary(),
       'gewinnvortrag' => binary(),
       'instrumentType' := openapi_instrument_type:openapi_instrument_type(),
       'kestPflichtig' => boolean(),
       'name' => binary(),
       'notes' => binary(),
       'verlustVerrechnungskonto' => binary(),
       'verlustbeteiligung' => boolean()
     }.

encode(#{ 'contractDate' := ContractDate,
          'einlage' := Einlage,
          'gewinnquotePct' := GewinnquotePct,
          'gewinnvortrag' := Gewinnvortrag,
          'instrumentType' := InstrumentType,
          'kestPflichtig' := KestPflichtig,
          'name' := Name,
          'notes' := Notes,
          'verlustVerrechnungskonto' := VerlustVerrechnungskonto,
          'verlustbeteiligung' := Verlustbeteiligung
        }) ->
    #{ 'contractDate' => ContractDate,
       'einlage' => Einlage,
       'gewinnquotePct' => GewinnquotePct,
       'gewinnvortrag' => Gewinnvortrag,
       'instrumentType' => InstrumentType,
       'kestPflichtig' => KestPflichtig,
       'name' => Name,
       'notes' => Notes,
       'verlustVerrechnungskonto' => VerlustVerrechnungskonto,
       'verlustbeteiligung' => Verlustbeteiligung
     }.

-module(openapi_kst_ergebnis).

-export([encode/1]).

-export_type([openapi_kst_ergebnis/0]).

-type openapi_kst_ergebnis() ::
    #{ 'gesamt' := binary(),
       'gesamtbelastung' := binary(),
       'gewerbesteuer' := binary(),
       'gewinn' := binary(),
       'ist_kapitalgesellschaft' := boolean(),
       'jahr' := integer(),
       'koerperschaftsteuer' := binary(),
       'solidaritaetszuschlag' := binary()
     }.

encode(#{ 'gesamt' := Gesamt,
          'gesamtbelastung' := Gesamtbelastung,
          'gewerbesteuer' := Gewerbesteuer,
          'gewinn' := Gewinn,
          'ist_kapitalgesellschaft' := IstKapitalgesellschaft,
          'jahr' := Jahr,
          'koerperschaftsteuer' := Koerperschaftsteuer,
          'solidaritaetszuschlag' := Solidaritaetszuschlag
        }) ->
    #{ 'gesamt' => Gesamt,
       'gesamtbelastung' => Gesamtbelastung,
       'gewerbesteuer' => Gewerbesteuer,
       'gewinn' => Gewinn,
       'ist_kapitalgesellschaft' => IstKapitalgesellschaft,
       'jahr' => Jahr,
       'koerperschaftsteuer' => Koerperschaftsteuer,
       'solidaritaetszuschlag' => Solidaritaetszuschlag
     }.

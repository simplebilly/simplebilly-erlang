-module(openapi_anlage_s_kfz_hinweis).

-export([encode/1]).

-export_type([openapi_anlage_s_kfz_hinweis/0]).

-type openapi_anlage_s_kfz_hinweis() ::
    #{ 'bezeichnung' := binary(),
       'kennzeichen' := binary(),
       'privat_anteil_prozent' := binary()
     }.

encode(#{ 'bezeichnung' := Bezeichnung,
          'kennzeichen' := Kennzeichen,
          'privat_anteil_prozent' := PrivatAnteilProzent
        }) ->
    #{ 'bezeichnung' => Bezeichnung,
       'kennzeichen' => Kennzeichen,
       'privat_anteil_prozent' => PrivatAnteilProzent
     }.

-module(openapi_frist_eintrag).

-export([encode/1]).

-export_type([openapi_frist_eintrag/0]).

-type openapi_frist_eintrag() ::
    #{ 'bezeichnung' := binary(),
       'faellig' := binary(),
       'faellig_original' := binary(),
       'hinweis' => binary(),
       'typ' := binary(),
       'zeitraum' := binary()
     }.

encode(#{ 'bezeichnung' := Bezeichnung,
          'faellig' := Faellig,
          'faellig_original' := FaelligOriginal,
          'hinweis' := Hinweis,
          'typ' := Typ,
          'zeitraum' := Zeitraum
        }) ->
    #{ 'bezeichnung' => Bezeichnung,
       'faellig' => Faellig,
       'faellig_original' => FaelligOriginal,
       'hinweis' => Hinweis,
       'typ' => Typ,
       'zeitraum' => Zeitraum
     }.

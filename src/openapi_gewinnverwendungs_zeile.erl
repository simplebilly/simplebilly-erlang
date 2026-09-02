-module(openapi_gewinnverwendungs_zeile).

-export([encode/1]).

-export_type([openapi_gewinnverwendungs_zeile/0]).

-type openapi_gewinnverwendungs_zeile() ::
    #{ 'betrag' := binary(),
       'label' := binary()
     }.

encode(#{ 'betrag' := Betrag,
          'label' := Label
        }) ->
    #{ 'betrag' => Betrag,
       'label' => Label
     }.

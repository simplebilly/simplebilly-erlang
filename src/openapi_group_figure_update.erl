-module(openapi_group_figure_update).

-export([encode/1]).

-export_type([openapi_group_figure_update/0]).

-type openapi_group_figure_update() ::
    #{ 'bilanzsumme' => binary(),
       'exemptionClaimed' => boolean(),
       'mitarbeiter' => integer(),
       'nettoUmsatz' => binary(),
       'parentName' => binary(),
       'parentSitus' => binary()
     }.

encode(#{ 'bilanzsumme' := Bilanzsumme,
          'exemptionClaimed' := ExemptionClaimed,
          'mitarbeiter' := Mitarbeiter,
          'nettoUmsatz' := NettoUmsatz,
          'parentName' := ParentName,
          'parentSitus' := ParentSitus
        }) ->
    #{ 'bilanzsumme' => Bilanzsumme,
       'exemptionClaimed' => ExemptionClaimed,
       'mitarbeiter' => Mitarbeiter,
       'nettoUmsatz' => NettoUmsatz,
       'parentName' => ParentName,
       'parentSitus' => ParentSitus
     }.

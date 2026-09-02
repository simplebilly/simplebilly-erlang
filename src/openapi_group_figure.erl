-module(openapi_group_figure).

-export([encode/1]).

-export_type([openapi_group_figure/0]).

-type openapi_group_figure() ::
    #{ 'bilanzsumme' => binary(),
       'exemptionClaimed' => boolean(),
       'mitarbeiter' => integer(),
       'nettoUmsatz' => binary(),
       'parentName' => binary(),
       'parentSitus' => binary(),
       'year' := integer()
     }.

encode(#{ 'bilanzsumme' := Bilanzsumme,
          'exemptionClaimed' := ExemptionClaimed,
          'mitarbeiter' := Mitarbeiter,
          'nettoUmsatz' := NettoUmsatz,
          'parentName' := ParentName,
          'parentSitus' := ParentSitus,
          'year' := Year
        }) ->
    #{ 'bilanzsumme' => Bilanzsumme,
       'exemptionClaimed' => ExemptionClaimed,
       'mitarbeiter' => Mitarbeiter,
       'nettoUmsatz' => NettoUmsatz,
       'parentName' => ParentName,
       'parentSitus' => ParentSitus,
       'year' => Year
     }.

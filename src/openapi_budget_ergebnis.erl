-module(openapi_budget_ergebnis).

-export([encode/1]).

-export_type([openapi_budget_ergebnis/0]).

-type openapi_budget_ergebnis() ::
    #{ 'jahr' := integer(),
       'monat' := integer(),
       'monats_budget' := list(),
       'prognose_restjahr' := list()
     }.

encode(#{ 'jahr' := Jahr,
          'monat' := Monat,
          'monats_budget' := MonatsBudget,
          'prognose_restjahr' := PrognoseRestjahr
        }) ->
    #{ 'jahr' => Jahr,
       'monat' => Monat,
       'monats_budget' => MonatsBudget,
       'prognose_restjahr' => PrognoseRestjahr
     }.

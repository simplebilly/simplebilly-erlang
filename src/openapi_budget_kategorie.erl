-module(openapi_budget_kategorie).

-export([encode/1]).

-export_type([openapi_budget_kategorie/0]).

-type openapi_budget_kategorie() ::
    #{ 'budget' := binary(),
       'differenz' := binary(),
       'goal' => binary(),
       'ist' := binary(),
       'kategorie' := binary()
     }.

encode(#{ 'budget' := Budget,
          'differenz' := Differenz,
          'goal' := Goal,
          'ist' := Ist,
          'kategorie' := Kategorie
        }) ->
    #{ 'budget' => Budget,
       'differenz' => Differenz,
       'goal' => Goal,
       'ist' => Ist,
       'kategorie' => Kategorie
     }.

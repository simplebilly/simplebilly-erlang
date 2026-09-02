-module(openapi_stille_report).

-export([encode/1]).

-export_type([openapi_stille_report/0]).

-type openapi_stille_report() ::
    #{ 'jahresueberschuss' := binary(),
       'partners' := list(),
       'year' := integer()
     }.

encode(#{ 'jahresueberschuss' := Jahresueberschuss,
          'partners' := Partners,
          'year' := Year
        }) ->
    #{ 'jahresueberschuss' => Jahresueberschuss,
       'partners' => Partners,
       'year' => Year
     }.

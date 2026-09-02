-module(openapi_konzern_status).

-export([encode/1]).

-export_type([openapi_konzern_status/0]).

-type openapi_konzern_status() ::
    #{ 'groessenbefreit' := boolean(),
       'kapitalmarktorientiert' := boolean(),
       'konzernabschlusspflicht' := boolean(),
       'missing_group_figures' := boolean(),
       'mutterunternehmen' := boolean(),
       'parent_name' => binary(),
       'parent_situs' => binary(),
       'participations' := list(),
       'thresholds' := openapi_konzern_thresholds:openapi_konzern_thresholds(),
       'year' := integer(),
       'zwischenholding_befreit' := boolean(),
       'zwischenholding_hinweis' => binary()
     }.

encode(#{ 'groessenbefreit' := Groessenbefreit,
          'kapitalmarktorientiert' := Kapitalmarktorientiert,
          'konzernabschlusspflicht' := Konzernabschlusspflicht,
          'missing_group_figures' := MissingGroupFigures,
          'mutterunternehmen' := Mutterunternehmen,
          'parent_name' := ParentName,
          'parent_situs' := ParentSitus,
          'participations' := Participations,
          'thresholds' := Thresholds,
          'year' := Year,
          'zwischenholding_befreit' := ZwischenholdingBefreit,
          'zwischenholding_hinweis' := ZwischenholdingHinweis
        }) ->
    #{ 'groessenbefreit' => Groessenbefreit,
       'kapitalmarktorientiert' => Kapitalmarktorientiert,
       'konzernabschlusspflicht' => Konzernabschlusspflicht,
       'missing_group_figures' => MissingGroupFigures,
       'mutterunternehmen' => Mutterunternehmen,
       'parent_name' => ParentName,
       'parent_situs' => ParentSitus,
       'participations' => Participations,
       'thresholds' => Thresholds,
       'year' => Year,
       'zwischenholding_befreit' => ZwischenholdingBefreit,
       'zwischenholding_hinweis' => ZwischenholdingHinweis
     }.

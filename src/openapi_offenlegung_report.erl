-module(openapi_offenlegung_report).

-export([encode/1]).

-export_type([openapi_offenlegung_report/0]).

-type openapi_offenlegung_report() ::
    #{ 'deadline' := calendar:date(),
       'deadline_months' := integer(),
       'items' := list(),
       'kapitalmarktorientiert' := boolean(),
       'note' := binary(),
       'year' := integer()
     }.

encode(#{ 'deadline' := Deadline,
          'deadline_months' := DeadlineMonths,
          'items' := Items,
          'kapitalmarktorientiert' := Kapitalmarktorientiert,
          'note' := Note,
          'year' := Year
        }) ->
    #{ 'deadline' => Deadline,
       'deadline_months' => DeadlineMonths,
       'items' => Items,
       'kapitalmarktorientiert' => Kapitalmarktorientiert,
       'note' => Note,
       'year' => Year
     }.

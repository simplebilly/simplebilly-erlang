-module(openapi_institute_deadlines).

-export([encode/1]).

-export_type([openapi_institute_deadlines/0]).

-type openapi_institute_deadlines() ::
    #{ 'abschlusspruefungMonths' => integer(),
       'jahresabschlussBafinMonths' => integer(),
       'offenlegungMonths' := integer()
     }.

encode(#{ 'abschlusspruefungMonths' := AbschlusspruefungMonths,
          'jahresabschlussBafinMonths' := JahresabschlussBafinMonths,
          'offenlegungMonths' := OffenlegungMonths
        }) ->
    #{ 'abschlusspruefungMonths' => AbschlusspruefungMonths,
       'jahresabschlussBafinMonths' => JahresabschlussBafinMonths,
       'offenlegungMonths' => OffenlegungMonths
     }.

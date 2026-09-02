-module(openapi_institute_status).

-export([encode/1]).

-export_type([openapi_institute_status/0]).

-type openapi_institute_status() ::
    #{ 'checklist' := list(),
       'deadlines' := openapi_institute_deadlines:openapi_institute_deadlines(),
       'instituteType' := binary(),
       'kapitalmarktorientiert' := boolean()
     }.

encode(#{ 'checklist' := Checklist,
          'deadlines' := Deadlines,
          'instituteType' := InstituteType,
          'kapitalmarktorientiert' := Kapitalmarktorientiert
        }) ->
    #{ 'checklist' => Checklist,
       'deadlines' => Deadlines,
       'instituteType' => InstituteType,
       'kapitalmarktorientiert' => Kapitalmarktorientiert
     }.

-module(openapi_institute_profile_update).

-export([encode/1]).

-export_type([openapi_institute_profile_update/0]).

-type openapi_institute_profile_update() ::
    #{ 'instituteType' => binary(),
       'kapitalmarktorientiert' => boolean()
     }.

encode(#{ 'instituteType' := InstituteType,
          'kapitalmarktorientiert' := Kapitalmarktorientiert
        }) ->
    #{ 'instituteType' => InstituteType,
       'kapitalmarktorientiert' => Kapitalmarktorientiert
     }.

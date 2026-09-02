-module(openapi_institute_profile).

-export([encode/1]).

-export_type([openapi_institute_profile/0]).

-type openapi_institute_profile() ::
    #{ 'instituteType' => openapi_institute_type:openapi_institute_type(),
       'kapitalmarktorientiert' => boolean()
     }.

encode(#{ 'instituteType' := InstituteType,
          'kapitalmarktorientiert' := Kapitalmarktorientiert
        }) ->
    #{ 'instituteType' => InstituteType,
       'kapitalmarktorientiert' => Kapitalmarktorientiert
     }.

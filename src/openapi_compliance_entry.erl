-module(openapi_compliance_entry).

-export([encode/1]).

-export_type([openapi_compliance_entry/0]).

-type openapi_compliance_entry() ::
    #{ 'description' := binary(),
       'module' := binary(),
       'regulations' := list()
     }.

encode(#{ 'description' := Description,
          'module' := Module,
          'regulations' := Regulations
        }) ->
    #{ 'description' => Description,
       'module' => Module,
       'regulations' => Regulations
     }.

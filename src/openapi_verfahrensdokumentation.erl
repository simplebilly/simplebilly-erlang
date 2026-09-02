-module(openapi_verfahrensdokumentation).

-export([encode/1]).

-export_type([openapi_verfahrensdokumentation/0]).

-type openapi_verfahrensdokumentation() ::
    #{ 'entries' := list(),
       'generated_at' := binary(),
       'title' := binary(),
       'version' := binary()
     }.

encode(#{ 'entries' := Entries,
          'generated_at' := GeneratedAt,
          'title' := Title,
          'version' := Version
        }) ->
    #{ 'entries' => Entries,
       'generated_at' => GeneratedAt,
       'title' => Title,
       'version' => Version
     }.

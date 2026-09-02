-module(openapi_changelog_entry).

-export([encode/1]).

-export_type([openapi_changelog_entry/0]).

-type openapi_changelog_entry() ::
    #{ 'date' := binary(),
       'notes' := binary(),
       'version' := binary()
     }.

encode(#{ 'date' := Date,
          'notes' := Notes,
          'version' := Version
        }) ->
    #{ 'date' => Date,
       'notes' => Notes,
       'version' => Version
     }.

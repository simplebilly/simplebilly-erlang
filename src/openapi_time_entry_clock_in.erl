-module(openapi_time_entry_clock_in).

-export([encode/1]).

-export_type([openapi_time_entry_clock_in/0]).

-type openapi_time_entry_clock_in() ::
    #{ 'notes' => binary()
     }.

encode(#{ 'notes' := Notes
        }) ->
    #{ 'notes' => Notes
     }.

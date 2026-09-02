-module(openapi_time_entry_clock_out).

-export([encode/1]).

-export_type([openapi_time_entry_clock_out/0]).

-type openapi_time_entry_clock_out() ::
    #{ 'clock_out' := openapi_date_time:openapi_date_time(),
       'hours' => binary()
     }.

encode(#{ 'clock_out' := ClockOut,
          'hours' := Hours
        }) ->
    #{ 'clock_out' => ClockOut,
       'hours' => Hours
     }.

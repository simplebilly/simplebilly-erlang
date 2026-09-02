-module(openapi_tracking_event).

-export([encode/1]).

-export_type([openapi_tracking_event/0]).

-type openapi_tracking_event() ::
    #{ 'date' := binary(),
       'description' := binary(),
       'location' := binary(),
       'status' := binary()
     }.

encode(#{ 'date' := Date,
          'description' := Description,
          'location' := Location,
          'status' := Status
        }) ->
    #{ 'date' => Date,
       'description' => Description,
       'location' => Location,
       'status' => Status
     }.

-module(openapi_timeline_event).

-export([encode/1]).

-export_type([openapi_timeline_event/0]).

-type openapi_timeline_event() ::
    #{ 'date' := binary(),
       'detail' => binary(),
       'id' := binary(),
       'status' => binary(),
       'title' := binary(),
       'type' := binary()
     }.

encode(#{ 'date' := Date,
          'detail' := Detail,
          'id' := Id,
          'status' := Status,
          'title' := Title,
          'type' := Type
        }) ->
    #{ 'date' => Date,
       'detail' => Detail,
       'id' => Id,
       'status' => Status,
       'title' => Title,
       'type' => Type
     }.

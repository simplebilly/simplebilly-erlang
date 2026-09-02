-module(openapi_x_rechnung_response).

-export([encode/1]).

-export_type([openapi_x_rechnung_response/0]).

-type openapi_x_rechnung_response() ::
    #{ 'content' := binary(),
       'content_type' := binary(),
       'filename' := binary()
     }.

encode(#{ 'content' := Content,
          'content_type' := ContentType,
          'filename' := Filename
        }) ->
    #{ 'content' => Content,
       'content_type' => ContentType,
       'filename' => Filename
     }.

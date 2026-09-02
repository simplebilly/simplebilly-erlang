-module(openapi_packing_video_response).

-export([encode/1]).

-export_type([openapi_packing_video_response/0]).

-type openapi_packing_video_response() ::
    #{ 'message' := binary(),
       'recording_url' => binary(),
       'success' := boolean()
     }.

encode(#{ 'message' := Message,
          'recording_url' := RecordingUrl,
          'success' := Success
        }) ->
    #{ 'message' => Message,
       'recording_url' => RecordingUrl,
       'success' => Success
     }.

-module(openapi_new_version_request).

-export([encode/1]).

-export_type([openapi_new_version_request/0]).

-type openapi_new_version_request() ::
    #{ 'fileName' := binary(),
       'fileSize' => integer(),
       'mimeType' => binary(),
       'originalName' => binary(),
       'sha256Hash' => binary()
     }.

encode(#{ 'fileName' := FileName,
          'fileSize' := FileSize,
          'mimeType' := MimeType,
          'originalName' := OriginalName,
          'sha256Hash' := Sha256Hash
        }) ->
    #{ 'fileName' => FileName,
       'fileSize' => FileSize,
       'mimeType' => MimeType,
       'originalName' => OriginalName,
       'sha256Hash' => Sha256Hash
     }.

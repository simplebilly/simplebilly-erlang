-module(openapi_attachment_version).

-export([encode/1]).

-export_type([openapi_attachment_version/0]).

-type openapi_attachment_version() ::
    #{ 'attachmentId' := openapi_u_uid:openapi_u_uid(),
       'fileName' := binary(),
       'fileSize' => integer(),
       'mimeType' => binary(),
       'originalName' => binary(),
       'sha256Hash' => binary(),
       'uploadedBy' => openapi_u_uid:openapi_u_uid(),
       'versionNumber' := integer()
     }.

encode(#{ 'attachmentId' := AttachmentId,
          'fileName' := FileName,
          'fileSize' := FileSize,
          'mimeType' := MimeType,
          'originalName' := OriginalName,
          'sha256Hash' := Sha256Hash,
          'uploadedBy' := UploadedBy,
          'versionNumber' := VersionNumber
        }) ->
    #{ 'attachmentId' => AttachmentId,
       'fileName' => FileName,
       'fileSize' => FileSize,
       'mimeType' => MimeType,
       'originalName' => OriginalName,
       'sha256Hash' => Sha256Hash,
       'uploadedBy' => UploadedBy,
       'versionNumber' => VersionNumber
     }.

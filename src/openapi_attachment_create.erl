-module(openapi_attachment_create).

-export([encode/1]).

-export_type([openapi_attachment_create/0]).

-type openapi_attachment_create() ::
    #{ 'contactId' => binary(),
       'fileName' := binary(),
       'fileSize' => integer(),
       'mimeType' => binary(),
       'originalName' := binary(),
       'pdfaPath' => binary(),
       'sha256Hash' => binary(),
       'uploadedBy' => openapi_u_uid:openapi_u_uid()
     }.

encode(#{ 'contactId' := ContactId,
          'fileName' := FileName,
          'fileSize' := FileSize,
          'mimeType' := MimeType,
          'originalName' := OriginalName,
          'pdfaPath' := PdfaPath,
          'sha256Hash' := Sha256Hash,
          'uploadedBy' := UploadedBy
        }) ->
    #{ 'contactId' => ContactId,
       'fileName' => FileName,
       'fileSize' => FileSize,
       'mimeType' => MimeType,
       'originalName' => OriginalName,
       'pdfaPath' => PdfaPath,
       'sha256Hash' => Sha256Hash,
       'uploadedBy' => UploadedBy
     }.

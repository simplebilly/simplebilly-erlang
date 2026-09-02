-module(openapi_section).

-export([encode/1]).

-export_type([openapi_section/0]).

-type openapi_section() ::
    #{ 'bodyHtml' := binary(),
       'bodyHtmlEn' := binary(),
       'id' := binary(),
       'title' := binary(),
       'titleEn' := binary()
     }.

encode(#{ 'bodyHtml' := BodyHtml,
          'bodyHtmlEn' := BodyHtmlEn,
          'id' := Id,
          'title' := Title,
          'titleEn' := TitleEn
        }) ->
    #{ 'bodyHtml' => BodyHtml,
       'bodyHtmlEn' => BodyHtmlEn,
       'id' => Id,
       'title' => Title,
       'titleEn' => TitleEn
     }.

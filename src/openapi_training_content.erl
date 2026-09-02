-module(openapi_training_content).

-export([encode/1]).

-export_type([openapi_training_content/0]).

-type openapi_training_content() ::
    #{ 'code' := binary(),
       'contact' := openapi_contact_info:openapi_contact_info(),
       'passScore' := integer(),
       'quiz' := list(),
       'sections' := list(),
       'title' := binary(),
       'titleEn' := binary()
     }.

encode(#{ 'code' := Code,
          'contact' := Contact,
          'passScore' := PassScore,
          'quiz' := Quiz,
          'sections' := Sections,
          'title' := Title,
          'titleEn' := TitleEn
        }) ->
    #{ 'code' => Code,
       'contact' => Contact,
       'passScore' => PassScore,
       'quiz' => Quiz,
       'sections' => Sections,
       'title' => Title,
       'titleEn' => TitleEn
     }.

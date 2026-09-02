-module(openapi_quiz_question).

-export([encode/1]).

-export_type([openapi_quiz_question/0]).

-type openapi_quiz_question() ::
    #{ 'id' := binary(),
       'options' := list(),
       'optionsEn' := list(),
       'question' := binary(),
       'questionEn' := binary()
     }.

encode(#{ 'id' := Id,
          'options' := Options,
          'optionsEn' := OptionsEn,
          'question' := Question,
          'questionEn' := QuestionEn
        }) ->
    #{ 'id' => Id,
       'options' => Options,
       'optionsEn' => OptionsEn,
       'question' => Question,
       'questionEn' => QuestionEn
     }.

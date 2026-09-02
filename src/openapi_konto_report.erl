-module(openapi_konto_report).

-export([encode/1]).

-export_type([openapi_konto_report/0]).

-type openapi_konto_report() ::
    #{ 'generated_at' := binary(),
       'konten' := list(),
       'period' := binary()
     }.

encode(#{ 'generated_at' := GeneratedAt,
          'konten' := Konten,
          'period' := Period
        }) ->
    #{ 'generated_at' => GeneratedAt,
       'konten' => Konten,
       'period' => Period
     }.

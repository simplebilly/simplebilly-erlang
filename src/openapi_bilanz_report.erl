-module(openapi_bilanz_report).

-export([encode/1]).

-export_type([openapi_bilanz_report/0]).

-type openapi_bilanz_report() ::
    #{ 'aktiva' := list(),
       'balanced' := boolean(),
       'generated_at' := binary(),
       'passiva' := list(),
       'period' := binary(),
       'total_aktiva' := binary(),
       'total_passiva' := binary()
     }.

encode(#{ 'aktiva' := Aktiva,
          'balanced' := Balanced,
          'generated_at' := GeneratedAt,
          'passiva' := Passiva,
          'period' := Period,
          'total_aktiva' := TotalAktiva,
          'total_passiva' := TotalPassiva
        }) ->
    #{ 'aktiva' => Aktiva,
       'balanced' => Balanced,
       'generated_at' => GeneratedAt,
       'passiva' => Passiva,
       'period' => Period,
       'total_aktiva' => TotalAktiva,
       'total_passiva' => TotalPassiva
     }.

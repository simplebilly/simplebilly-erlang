-module(openapi_partial_feature_settings).

-export([encode/1]).

-export_type([openapi_partial_feature_settings/0]).

-type openapi_partial_feature_settings() ::
    #{ 'onlineshop' => boolean(),
       'reportBilanz' => boolean(),
       'reportBwa' => boolean(),
       'reportEuer' => boolean(),
       'reportGewerbesteuer' => boolean(),
       'reportGuv' => boolean(),
       'reportKst' => boolean(),
       'reportUstva' => boolean()
     }.

encode(#{ 'onlineshop' := Onlineshop,
          'reportBilanz' := ReportBilanz,
          'reportBwa' := ReportBwa,
          'reportEuer' := ReportEuer,
          'reportGewerbesteuer' := ReportGewerbesteuer,
          'reportGuv' := ReportGuv,
          'reportKst' := ReportKst,
          'reportUstva' := ReportUstva
        }) ->
    #{ 'onlineshop' => Onlineshop,
       'reportBilanz' => ReportBilanz,
       'reportBwa' => ReportBwa,
       'reportEuer' => ReportEuer,
       'reportGewerbesteuer' => ReportGewerbesteuer,
       'reportGuv' => ReportGuv,
       'reportKst' => ReportKst,
       'reportUstva' => ReportUstva
     }.

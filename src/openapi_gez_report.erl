-module(openapi_gez_report).

-export([encode/1]).

-export_type([openapi_gez_report/0]).

-type openapi_gez_report() ::
    #{ 'beitragsfreie_kfz' := integer(),
       'beitragspflichtige_kfz' := integer(),
       'betriebsstaetten' := list(),
       'hinweis' := binary(),
       'hotelzimmer_beitrag' := binary(),
       'jaehrlicher_beitrag' := binary(),
       'jahr' := integer(),
       'kfz_beitrag' := binary(),
       'monatlicher_beitrag' := binary(),
       'vierteljaehrlicher_beitrag' := binary()
     }.

encode(#{ 'beitragsfreie_kfz' := BeitragsfreieKfz,
          'beitragspflichtige_kfz' := BeitragspflichtigeKfz,
          'betriebsstaetten' := Betriebsstaetten,
          'hinweis' := Hinweis,
          'hotelzimmer_beitrag' := HotelzimmerBeitrag,
          'jaehrlicher_beitrag' := JaehrlicherBeitrag,
          'jahr' := Jahr,
          'kfz_beitrag' := KfzBeitrag,
          'monatlicher_beitrag' := MonatlicherBeitrag,
          'vierteljaehrlicher_beitrag' := VierteljaehrlicherBeitrag
        }) ->
    #{ 'beitragsfreie_kfz' => BeitragsfreieKfz,
       'beitragspflichtige_kfz' => BeitragspflichtigeKfz,
       'betriebsstaetten' => Betriebsstaetten,
       'hinweis' => Hinweis,
       'hotelzimmer_beitrag' => HotelzimmerBeitrag,
       'jaehrlicher_beitrag' => JaehrlicherBeitrag,
       'jahr' => Jahr,
       'kfz_beitrag' => KfzBeitrag,
       'monatlicher_beitrag' => MonatlicherBeitrag,
       'vierteljaehrlicher_beitrag' => VierteljaehrlicherBeitrag
     }.

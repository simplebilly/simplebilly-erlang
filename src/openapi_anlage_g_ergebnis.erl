-module(openapi_anlage_g_ergebnis).

-export([encode/1]).

-export_type([openapi_anlage_g_ergebnis/0]).

-type openapi_anlage_g_ergebnis() ::
    #{ 'gewinn_verlust' := binary(),
       'gewst_gezahlt' := binary(),
       'gewst_messbetrag_approx' := binary(),
       'gewst_pflichtig' := boolean(),
       'jahr' := integer(),
       'kfz_hinweise' := list()
     }.

encode(#{ 'gewinn_verlust' := GewinnVerlust,
          'gewst_gezahlt' := GewstGezahlt,
          'gewst_messbetrag_approx' := GewstMessbetragApprox,
          'gewst_pflichtig' := GewstPflichtig,
          'jahr' := Jahr,
          'kfz_hinweise' := KfzHinweise
        }) ->
    #{ 'gewinn_verlust' => GewinnVerlust,
       'gewst_gezahlt' => GewstGezahlt,
       'gewst_messbetrag_approx' => GewstMessbetragApprox,
       'gewst_pflichtig' => GewstPflichtig,
       'jahr' => Jahr,
       'kfz_hinweise' => KfzHinweise
     }.

-module(openapi_dpa_status).

-export([encode/1]).

-export_type([openapi_dpa_status/0]).

-type openapi_dpa_status() ::
    #{ 'accepted' := boolean(),
       'acceptedAt' => binary(),
       'acceptedBy' => binary(),
       'version' => binary()
     }.

encode(#{ 'accepted' := Accepted,
          'acceptedAt' := AcceptedAt,
          'acceptedBy' := AcceptedBy,
          'version' := Version
        }) ->
    #{ 'accepted' => Accepted,
       'acceptedAt' => AcceptedAt,
       'acceptedBy' => AcceptedBy,
       'version' => Version
     }.

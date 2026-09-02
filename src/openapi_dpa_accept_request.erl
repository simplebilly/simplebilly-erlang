-module(openapi_dpa_accept_request).

-export([encode/1]).

-export_type([openapi_dpa_accept_request/0]).

-type openapi_dpa_accept_request() ::
    #{ 'acceptedByName' := binary(),
       'version' := binary()
     }.

encode(#{ 'acceptedByName' := AcceptedByName,
          'version' := Version
        }) ->
    #{ 'acceptedByName' => AcceptedByName,
       'version' => Version
     }.

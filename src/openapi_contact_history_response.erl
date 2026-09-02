-module(openapi_contact_history_response).

-export([encode/1]).

-export_type([openapi_contact_history_response/0]).

-type openapi_contact_history_response() ::
    #{ 'contactId' := binary(),
       'inboundCount' := integer(),
       'items' := list(),
       'outboundCount' := integer()
     }.

encode(#{ 'contactId' := ContactId,
          'inboundCount' := InboundCount,
          'items' := Items,
          'outboundCount' := OutboundCount
        }) ->
    #{ 'contactId' => ContactId,
       'inboundCount' => InboundCount,
       'items' => Items,
       'outboundCount' => OutboundCount
     }.

-module(openapi_contact_timeline_response).

-export([encode/1]).

-export_type([openapi_contact_timeline_response/0]).

-type openapi_contact_timeline_response() ::
    #{ 'contactId' := binary(),
       'events' := list()
     }.

encode(#{ 'contactId' := ContactId,
          'events' := Events
        }) ->
    #{ 'contactId' => ContactId,
       'events' => Events
     }.

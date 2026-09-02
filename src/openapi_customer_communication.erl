-module(openapi_customer_communication).

-export([encode/1]).

-export_type([openapi_customer_communication/0]).

-type openapi_customer_communication() ::
    #{ 'body' => binary(),
       'channel' := openapi_communication_channel:openapi_communication_channel(),
       'contactId' := binary(),
       'counterparty' => binary(),
       'direction' := openapi_communication_direction:openapi_communication_direction(),
       'occurredAt' => openapi_date_time:openapi_date_time(),
       'subject' => binary(),
       'tags' => openapi_any_type:openapi_any_type()
     }.

encode(#{ 'body' := Body,
          'channel' := Channel,
          'contactId' := ContactId,
          'counterparty' := Counterparty,
          'direction' := Direction,
          'occurredAt' := OccurredAt,
          'subject' := Subject,
          'tags' := Tags
        }) ->
    #{ 'body' => Body,
       'channel' => Channel,
       'contactId' => ContactId,
       'counterparty' => Counterparty,
       'direction' => Direction,
       'occurredAt' => OccurredAt,
       'subject' => Subject,
       'tags' => Tags
     }.

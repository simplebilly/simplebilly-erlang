-module(openapi_register_request).

-export([encode/1]).

-export_type([openapi_register_request/0]).

-type openapi_register_request() ::
    #{ 'company_name' := binary(),
       'email' := binary(),
       'first_name' := binary(),
       'last_name' := binary(),
       'password' := binary(),
       'privacy_accepted' := boolean()
     }.

encode(#{ 'company_name' := CompanyName,
          'email' := Email,
          'first_name' := FirstName,
          'last_name' := LastName,
          'password' := Password,
          'privacy_accepted' := PrivacyAccepted
        }) ->
    #{ 'company_name' => CompanyName,
       'email' => Email,
       'first_name' => FirstName,
       'last_name' => LastName,
       'password' => Password,
       'privacy_accepted' => PrivacyAccepted
     }.

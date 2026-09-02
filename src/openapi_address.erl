-module(openapi_address).

-export([encode/1]).

-export_type([openapi_address/0]).

-type openapi_address() ::
    #{ 'city' := binary(),
       'company' => binary(),
       'country' := binary(),
       'email' => binary(),
       'name' := binary(),
       'phone' => binary(),
       'street' := binary(),
       'street_number' := binary(),
       'zip' := binary()
     }.

encode(#{ 'city' := City,
          'company' := Company,
          'country' := Country,
          'email' := Email,
          'name' := Name,
          'phone' := Phone,
          'street' := Street,
          'street_number' := StreetNumber,
          'zip' := Zip
        }) ->
    #{ 'city' => City,
       'company' => Company,
       'country' => Country,
       'email' => Email,
       'name' => Name,
       'phone' => Phone,
       'street' => Street,
       'street_number' => StreetNumber,
       'zip' => Zip
     }.

-module(openapi_shareholder_create).

-export([encode/1]).

-export_type([openapi_shareholder_create/0]).

-type openapi_shareholder_create() ::
    #{ 'address' => binary(),
       'birthDate' => calendar:date(),
       'email' => binary(),
       'firstName' => binary(),
       'lastName' => binary(),
       'shareNumber' => binary(),
       'shares' => binary()
     }.

encode(#{ 'address' := Address,
          'birthDate' := BirthDate,
          'email' := Email,
          'firstName' := FirstName,
          'lastName' := LastName,
          'shareNumber' := ShareNumber,
          'shares' := Shares
        }) ->
    #{ 'address' => Address,
       'birthDate' => BirthDate,
       'email' => Email,
       'firstName' => FirstName,
       'lastName' => LastName,
       'shareNumber' => ShareNumber,
       'shares' => Shares
     }.

-module(openapi_participation).

-export([encode/1]).

-export_type([openapi_participation/0]).

-type openapi_participation() ::
    #{ 'acquiredAt' => calendar:date(),
       'boardAppointment' => boolean(),
       'companyName' => binary(),
       'controlAgreement' => boolean(),
       'legalForm' => binary(),
       'ownershipPct' => binary(),
       'purposeVehicle' => boolean(),
       'votingMajority' => boolean()
     }.

encode(#{ 'acquiredAt' := AcquiredAt,
          'boardAppointment' := BoardAppointment,
          'companyName' := CompanyName,
          'controlAgreement' := ControlAgreement,
          'legalForm' := LegalForm,
          'ownershipPct' := OwnershipPct,
          'purposeVehicle' := PurposeVehicle,
          'votingMajority' := VotingMajority
        }) ->
    #{ 'acquiredAt' => AcquiredAt,
       'boardAppointment' => BoardAppointment,
       'companyName' => CompanyName,
       'controlAgreement' => ControlAgreement,
       'legalForm' => LegalForm,
       'ownershipPct' => OwnershipPct,
       'purposeVehicle' => PurposeVehicle,
       'votingMajority' => VotingMajority
     }.

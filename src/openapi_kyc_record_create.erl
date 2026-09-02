-module(openapi_kyc_record_create).

-export([encode/1]).

-export_type([openapi_kyc_record_create/0]).

-type openapi_kyc_record_create() ::
    #{ 'customerId' => binary(),
       'customerName' => binary(),
       'kycDate' => calendar:date(),
       'notes' => binary(),
       'retentionUntil' => calendar:date(),
       'riskAssessment' => binary()
     }.

encode(#{ 'customerId' := CustomerId,
          'customerName' := CustomerName,
          'kycDate' := KycDate,
          'notes' := Notes,
          'retentionUntil' := RetentionUntil,
          'riskAssessment' := RiskAssessment
        }) ->
    #{ 'customerId' => CustomerId,
       'customerName' => CustomerName,
       'kycDate' => KycDate,
       'notes' => Notes,
       'retentionUntil' => RetentionUntil,
       'riskAssessment' => RiskAssessment
     }.

-module(openapi_public_posting).

-export([encode/1]).

-export_type([openapi_public_posting/0]).

-type openapi_public_posting() ::
    #{ 'currency' => binary(),
       'description' := binary(),
       'employmentType' => binary(),
       'id' := openapi_u_uid:openapi_u_uid(),
       'location' => binary(),
       'remote' := boolean(),
       'requiredSkills' := list(),
       'requirements' => binary(),
       'salaryMax' => integer(),
       'salaryMin' => integer(),
       'title' := binary()
     }.

encode(#{ 'currency' := Currency,
          'description' := Description,
          'employmentType' := EmploymentType,
          'id' := Id,
          'location' := Location,
          'remote' := Remote,
          'requiredSkills' := RequiredSkills,
          'requirements' := Requirements,
          'salaryMax' := SalaryMax,
          'salaryMin' := SalaryMin,
          'title' := Title
        }) ->
    #{ 'currency' => Currency,
       'description' => Description,
       'employmentType' => EmploymentType,
       'id' => Id,
       'location' => Location,
       'remote' => Remote,
       'requiredSkills' => RequiredSkills,
       'requirements' => Requirements,
       'salaryMax' => SalaryMax,
       'salaryMin' => SalaryMin,
       'title' => Title
     }.

-module(openapi_job_posting).

-export([encode/1]).

-export_type([openapi_job_posting/0]).

-type openapi_job_posting() ::
    #{ 'currency' => binary(),
       'department' => binary(),
       'description' := binary(),
       'employmentType' => openapi_employment_type:openapi_employment_type(),
       'location' => binary(),
       'remote' := boolean(),
       'requiredSkills' := openapi_any_type:openapi_any_type(),
       'requirements' => binary(),
       'salaryMax' => integer(),
       'salaryMin' => integer(),
       'status' := openapi_job_posting_status:openapi_job_posting_status(),
       'title' := binary()
     }.

encode(#{ 'currency' := Currency,
          'department' := Department,
          'description' := Description,
          'employmentType' := EmploymentType,
          'location' := Location,
          'remote' := Remote,
          'requiredSkills' := RequiredSkills,
          'requirements' := Requirements,
          'salaryMax' := SalaryMax,
          'salaryMin' := SalaryMin,
          'status' := Status,
          'title' := Title
        }) ->
    #{ 'currency' => Currency,
       'department' => Department,
       'description' => Description,
       'employmentType' => EmploymentType,
       'location' => Location,
       'remote' => Remote,
       'requiredSkills' => RequiredSkills,
       'requirements' => Requirements,
       'salaryMax' => SalaryMax,
       'salaryMin' => SalaryMin,
       'status' => Status,
       'title' => Title
     }.
